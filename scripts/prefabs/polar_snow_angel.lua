local EQUIPS_SYM_OVERRIDE = {
	swap_hat 		= EQUIPSLOTS.HEAD,
	swap_body 		= EQUIPSLOTS.BODY,
	swap_body_tall 	= EQUIPSLOTS.BODY,
	swap_object 	= EQUIPSLOTS.HANDS,
}

local function SetAngelPose(inst, data)
	local doer = data and data.doer
	
	if doer and inst.components.skinner then
		inst.components.skinner:CopySkinsFromPlayer(doer)
		if data.frame then
			inst.AnimState:SetFrame(data.frame)
		end
		if data.hide_body then
			inst.AnimState:SetFinalOffset(-6)
			
			inst.AnimState:HideSymbol("arm_upper")
			inst.AnimState:HideSymbol("arm_upper_skin")
			inst.AnimState:HideSymbol("torso")
			inst.AnimState:HideSymbol("torso_pelvis")
			inst.AnimState:Hide("HEAD")
			inst.AnimState:Hide("HEAD_HAT")
			inst.AnimState:Hide("HAIR")
			inst.AnimState:Hide("HAIR_HAT")
			inst.AnimState:Hide("HAIR_NOHAT")
			inst.AnimState:Hide("HAT")
			inst.AnimState:Hide("HAT")
		end
		
		for sym, equipslot in pairs(EQUIPS_SYM_OVERRIDE) do
			local build_override, sym_override = doer.AnimState:GetSymbolOverride(sym)
			local item = doer.components.inventory and doer.components.inventory:GetEquippedItem(equipslot)
			
			if sym == "swap_hat" and not data.hide_body then
				if sym_override then
					inst.AnimState:Show("HAT")
					inst.AnimState:Show("HAIR_HAT")
					inst.AnimState:Hide("HAIR_NOHAT")
					inst.AnimState:Hide("HAIR")
					inst.AnimState:Hide("HEAD")
					inst.AnimState:Show("HEAD_HAT")
					inst.AnimState:Show("HEAD_HAT_NOHELM")
					inst.AnimState:Hide("HEAD_HAT_HELM")
				else
					inst.AnimState:Hide("HAT")
					inst.AnimState:Hide("HAIR_HAT")
					inst.AnimState:Show("HAIR_NOHAT")
					inst.AnimState:Show("HAIR")
					inst.AnimState:Show("HEAD")
					inst.AnimState:Hide("HEAD_HAT")
					inst.AnimState:Hide("HEAD_HAT_NOHELM")
					inst.AnimState:Hide("HEAD_HAT_HELM")
				end
			elseif data.hide_body then
				inst.AnimState:HideSymbol(sym)
			end
			
			if item then
				local build_override, sym_override = doer.AnimState:GetSymbolOverride(sym)
				
				if sym_override then
					local skin_name = item:GetSkinName() or item.skinname
					local skin_build = skin_name and GetBuildForItem(skin_name)
					
					if skin_build then
						inst.AnimState:OverrideItemSkinSymbol(sym, skin_build, sym, item.GUID, item.AnimState:GetBuild())
					else
						inst.AnimState:OverrideSymbol(sym, build_override, sym_override)
					end
				end
			end
		end
	end
end

local function OnTimerDone(inst, data)
	if data.name == "go_away" then
		if inst:IsAsleep() then
			inst:Remove()
		else
			ErodeAway(inst)
		end
	end
end

local function OnInit(inst)
	if inst.components.colourtweener then
		inst.components.colourtweener:StartTween({0, 0, 0, 0.8}, 0.2)
	end
	if inst.components.timer and not inst.components.timer:TimerExists("go_away") then
		inst.components.timer:StartTimer("go_away", TUNING.TOTAL_DAY_TIME)
	end
end

-- NOTE: Snowangels face the 'down' camera angle of their owner specifically

local function CLIENT_SetOwnerRotation(inst)
	if inst._cam_owner == nil or inst._cam_owner:value() ~= ThePlayer then
		return
	end
	
	local cam = TheCamera:GetHeadingTarget()
	local rot = -cam + 90
	SendModRPCToServer(GetModRPC("Winterlands", "SnowAngel_SetOwnerRotation"), inst, rot)
end

local function fn()
	local inst = CreateEntity()
	
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()
	
	inst.Transform:SetFourFaced()
	
	--inst.Transform:SetRotation(math.random(360))
	
	inst.AnimState:SetBank("wilson")
	inst.AnimState:SetBuild("wilson")
	inst.AnimState:SetFinalOffset(-5)
	inst.AnimState:UsePointFiltering(true)
	inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
	inst.AnimState:SetLayer(LAYER_BACKGROUND)
	inst.AnimState:SetAddColour(0.7, 0.7, 0.7, 1)
	inst.AnimState:SetMultColour(0, 0, 0, 0)
	inst.AnimState:SetScale(1.1, 1.85)
	inst.AnimState:HideSymbol("face")
	inst.AnimState:Hide("SWAP_FACE")
	inst.AnimState:PlayAnimation("emote_snowangel_loop")
	inst.AnimState:SetErosionParams(math.random() * 0.1, 0.2 + math.random() * 0.4, 1)
	inst.AnimState:SetFrame(math.random(inst.AnimState:GetCurrentAnimationNumFrames()) - 1)
	inst.AnimState:Pause()
	
	inst:AddTag("FX")
	inst:AddTag("highsnowangel")
	
	inst._cam_owner = net_entity(inst.GUID, "polar_snow_angel._cam_owner")
	
	inst.entity:SetPristine()
	
	if not TheWorld.ismastersim then
		inst.OnEntityReplicated = function(inst)
			inst:DoTaskInTime(0.1, CLIENT_SetOwnerRotation)
		end
		
		return inst
	end
	
	inst:AddComponent("colourtweener")
	
	inst:AddComponent("skinner")
	inst.components.skinner:SetupNonPlayerData()
	
	inst:AddComponent("timer")
	
	inst.SetAngelPose = SetAngelPose
	
	inst:ListenForEvent("timerdone", OnTimerDone)
	
	inst:DoTaskInTime(0.15, OnInit)
	
	if not TheNet:IsDedicated() then
		inst:DoTaskInTime(0, function()
			if ThePlayer and TheCamera then
				local owner = inst._cam_owner and inst._cam_owner:value() or nil
				
				if owner == ThePlayer then
					local cam = TheCamera:GetHeadingTarget()
					local rot = -cam + 90
					
					inst.Transform:SetRotation(rot)
				end
			end
		end)
	end
	
	inst.persists = false
	
	return inst
end

return Prefab("polar_snow_angel", fn)