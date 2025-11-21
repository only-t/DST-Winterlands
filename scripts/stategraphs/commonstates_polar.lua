require("stategraphs/commonstates")

CommonStates.AddWalrusBeartrapHandlers = function(states, events, sg_data, dont_auto_struggle, struggle_times)
	sg_data.anims = sg_data.anims or {}
	struggle_times = struggle_times or {min = TUNING.WALRUS_BEARTRAP_AUTOSTRUGGLE_TIMES.min, max = TUNING.WALRUS_BEARTRAP_AUTOSTRUGGLE_TIMES.max}
	
	local default_anims = {
		-- If hit anims are not declared, fallback to struggle anims
		hit_playanim = sg_data.anims.hit_playanim == nil and (sg_data.anims.struggle_playanim or sg_data.anims.trapped_playanim or "beartrap_snared_pre") or sg_data.anims.hit_playanim,
		hit_pushanim = sg_data.anims.hit_pushanim == nil and (sg_data.anims.struggle_pushanim or sg_data.anims.trapped_pushanim or "beartrap_snared_loop") or sg_data.anims.hit_pushanim,
		-- If struggle anims are not declared, fallback to trapped anims
		struggle_playanim = sg_data.anims.struggle_playanim == nil and (sg_data.anims.trapped_playanim or "beartrap_snared_pre") or sg_data.anims.struggle_playanim,
		struggle_pushanim =  sg_data.anims.struggle_pushanim == nil and (sg_data.anims.trapped_pushanim or "beartrap_snared_loop") or sg_data.anims.struggle_pushanim,
		-- Declare these, or else...
		trapped_playanim = sg_data.anims.trapped_playanim == nil and "beartrap_snared_pre" or sg_data.anims.trapped_playanim,
		trapped_pushanim = sg_data.anims.trapped_pushanim == nil and "beartrap_snared_loop" or sg_data.anims.trapped_pushanim,
		-- We don't really care, bonus
		released_playanim = nil,
		released_pushanim = nil,
	}
	
	local function GetTrapAnim(category, inst)
		if sg_data.anims[category] == false then
			return nil
		else
			return FunctionOrValue(sg_data.anims[category] or default_anims[category], inst)
		end
	end
	
	if events then
		table.insert(events, EventHandler("walrus_beartrapped", function(inst, data)
			if inst.components.health and inst.components.health:IsDead() then
				return
			end
			
			local trap = data and data.trap or inst.sg.statemem.walrus_beartrap
			if trap and trap:IsValid() and data.captured then
				inst.sg:GoToState(sg_data.ontrappedstate or "walrus_beartrapped", trap)
			else
				if data.released then
					inst.SoundEmitter:PlaySound("dontstarve/common/tool_slip")
					inst.hurtsoundoverride = "no_sound"
					if inst.sg.currentstate.name == (sg_data.ontrappedstate or "walrus_beartrapped") and inst.sg:HasState(sg_data.onreleasedstate or "hit") then
						inst.sg:GoToState(sg_data.onreleasedstate or "hit")
					end
					inst.hurtsoundoverride = nil
					
					if sg_data.onreleasefn then
						sg_data.onreleasefn(inst, trap)
					end
				elseif data.struggle then
					if GetTrapAnim("struggle_playanim", inst) then
						inst.AnimState:PlayAnimation(GetTrapAnim("struggle_playanim", inst))
					end
					if GetTrapAnim("struggle_pushanim", inst) then
						inst.AnimState:PushAnimation(GetTrapAnim("struggle_pushanim", inst))
					end
					
					if trap and trap.DoTrapStruggle then
						trap:DoTrapStruggle(inst)
					end
					
					if sg_data.onstrugglefn then
						sg_data.onstrugglefn(inst, trap)
					end
				end
			end
		end))
	end
	
	if states then
		table.insert(states, State{
			name = "walrus_beartrapped",
			tags = {"busy", "nointerrupt", "nopredict", "nodangle", "overridelocomote"},
			
			onenter = function(inst, trap)
				inst:AddTag("walrus_beartrapped")
				
				if GetTrapAnim("trapped_playanim", inst) then
					inst.AnimState:PlayAnimation(GetTrapAnim("trapped_playanim", inst))
				end
				if GetTrapAnim("trapped_pushanim", inst) then
					inst.AnimState:PushAnimation(GetTrapAnim("trapped_pushanim", inst))
				end
				
				inst.Physics:Stop()
				if sg_data.ontrappedfn then
					sg_data.ontrappedfn(inst, trap)
				end
				
				inst.sg.statemem.walrus_beartrap = trap
				
				local _struggle_times = FunctionOrValue(struggle_times, inst, trap)
				inst.sg.statemem.next_struggle = not dont_auto_struggle and (GetTime() + math.random(_struggle_times.min, _struggle_times.max)) or nil
			end,
			
			onupdate = function(inst)
				local trap = inst.sg.statemem.walrus_beartrap
				
				if trap and trap:IsValid() then
					inst.Transform:SetPosition(trap.Transform:GetWorldPosition())
				else
					inst:PushEvent("walrus_beartrapped", {released = true})
				end
			end,
			
			onupdate = function(inst)
				local trap = inst.sg.statemem.walrus_beartrap
				
				if trap and trap:IsValid() then
					inst.Transform:SetPosition(trap.Transform:GetWorldPosition())
				else
					inst:PushEvent("walrus_beartrapped", {released = true})
					return
				end
				
				local t = GetTime()
				if inst.sg.statemem.next_struggle and t >= inst.sg.statemem.next_struggle and
					(inst.components.combat == nil or t >= inst.components.combat.lastwasattackedtime + TUNING.WALRUS_BEARTRAP_AUTOSTRUGGLE_TIMES.lastattacked) then
					
					inst:PushEvent("walrus_beartrapped", {released = false, struggle = true})
					
					local _struggle_times = FunctionOrValue(struggle_times, inst, trap)
					inst.sg.statemem.next_struggle = t + math.random(_struggle_times.min, _struggle_times.max)
				end
			end,
			
			events = {
				EventHandler("attacked", function(inst)
					if GetTrapAnim("hit_playanim", inst) then
						inst.AnimState:PlayAnimation(GetTrapAnim("hit_playanim", inst))
					end
					if GetTrapAnim("hit_pushanim", inst) then
						inst.AnimState:PushAnimation(GetTrapAnim("hit_pushanim", inst))
					end
				end),
			},
			
			onexit = function(inst)
				if sg_data.onexitfn then
					sg_data.onexitfn(inst, inst.sg.statemem.walrus_beartrap)
				end
				inst:RemoveTag("walrus_beartrapped")
				inst._walrus_beartrap = nil
			end,
		})
	end
end

local OldHitRecoveryDelay = CommonHandlers.HitRecoveryDelay
CommonHandlers.HitRecoveryDelay = function(inst, delay, max_hitreacts, skip_cooldown_fn, ...)
	if inst:HasTag("walrus_beartrapped") then
		return true
	end
	
	return OldHitRecoveryDelay(inst, delay, max_hitreacts, skip_cooldown_fn, ...)
end