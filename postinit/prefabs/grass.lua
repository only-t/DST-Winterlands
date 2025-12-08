local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local function GrassInPolar(inst)
	if IsInPolar(inst) then
		return true
	end
	
	local tx, ty = TheWorld.Map:GetTileCoordsAtPoint(inst.Transform:GetWorldPosition())
	
	return TheWorld.Map:GetTile(tx, ty) == WORLD_TILES.POLAR_SNOW -- Allows to put Tundra Grass from patches made by Winter's Fists!
end

local makemorphable

local OldOnTransplantFn
local function OnTransplantFn(inst, ...)
	local _makemorphable = makemorphable -- Keeping this here for simpler mod compat
	
	if GrassInPolar(inst) then
		local grass = SpawnPrefab("grass_polar")
		grass.Transform:SetPosition(inst.Transform:GetWorldPosition())
		
		if grass.components.pickable then
			grass.components.pickable:OnTransplant()
		end
		if TheWorld.components.lunarthrall_plantspawner and grass:HasTag("lunarplant_target") then
			TheWorld.components.lunarthrall_plantspawner:setHerdsOnPlantable(grass)
		end
		
		-- Funny delayed Brightshade herd task would cause a crash, don't remove too early
		inst:Hide()
		inst:DoTaskInTime(0, function()
			if inst.components.herdmember and inst.components.herdmember.task then
				inst.components.herdmember.task:Cancel()
				inst.components.herdmember.task = nil
			end
			
			inst:Remove()
		end)
	elseif OldOnTransplantFn then
		return OldOnTransplantFn(inst, ...)
	end
end

local OldMakeBarrenFn
local function MakeBarrenFn(inst, ...)
	inst:ReleaseFlea()
	
	if OldMakeBarrenFn then
		return OldMakeBarrenFn(inst, ...)
	end
end

local OldMakeEmptyFn
local function MakeEmptyFn(inst, ...)
	inst:ReleaseFlea()
	
	if OldMakeEmptyFn then
		return OldMakeEmptyFn(inst, ...)
	end
end

local function ReleaseFlea(inst)
	if inst._snowfleas then
		for i, v in ipairs(inst._snowfleas) do
			if v.SetHost then
				v:SetHost(nil, true) -- Be free!!
			end
		end
	end
end

local function OnGetPolarFlea(inst, data)
	local flea = data and data.flea
	
	if flea and flea:IsValid() and flea:GetTimeAlive() > 2 then
		if inst:HasTag("pickable") then
			inst.AnimState:PlayAnimation("rustle")
			inst.AnimState:PushAnimation("idle", true)
		end
		inst.SoundEmitter:PlaySound("dontstarve/wilson/pickup_reeds", nil, 0.25 + math.random() * 0.5)
	end
end

local function GetFleaCapacity(inst, flea)
	if flea and flea.components.combat and flea.components.combat.target then
		return 0
	elseif TheWorld.components.polarstorm and TheWorld.components.polarstorm:GetPolarStormLevel(inst) >= TUNING.SANDSTORM_FULL_LEVEL then
		return 0
	end
	
	return inst:HasTag("pickable") and TUNING.POLARFLEA_HOST_MAXFLEAS_SMALL or 0
end

ENV.AddPrefabPostInit("grass", function(inst)
	inst:AddTag("fleahosted")
	
	if not TheWorld.ismastersim then
		return
	end
	
	inst._fleacapacity = GetFleaCapacity
	
	if inst.components.pickable then
		if OldOnTransplantFn == nil then
			OldOnTransplantFn = inst.components.pickable.ontransplantfn
			OldMakeBarrenFn = inst.components.pickable.makebarrenfn
			OldMakeEmptyFn = inst.components.pickable.makeemptyfn
			
			makemorphable = PolarUpvalue(OldOnTransplantFn, "makemorphable")
		end
		
		inst.components.pickable.makebarrenfn = MakeBarrenFn
		inst.components.pickable.makeemptyfn = MakeEmptyFn
		inst.components.pickable.ontransplantfn = OnTransplantFn
	end
	
	inst.ReleaseFlea = ReleaseFlea
	
	inst:ListenForEvent("gotpolarflea", OnGetPolarFlea)
end)

--

local function OnGetPolarFlea_Dug(inst, data)
	local flea = data and data.flea
	
	if flea and flea:IsValid() and inst.components.inventoryitem and inst:GetTimeAlive() > 1 then
		local x, y, z = inst.Transform:GetWorldPosition()
		inst.components.inventoryitem:DoDropPhysics(x, y, z, true, 0.23)
	end
end

ENV.AddPrefabPostInit("dug_grass", function(inst)
	inst:AddTag("fleahosted")
	
	if not TheWorld.ismastersim then
		return
	end
	
	inst:ListenForEvent("gotpolarflea", OnGetPolarFlea_Dug)
end)

--

local function DoPolarUpdate(inst)
	local inpolar = GrassInPolar(inst)
	
	if (inst.inpolar or false) ~= inpolar then
		if inpolar then
			inst.AnimState:SetBank("grass_tall")
			inst.AnimState:SetBuild("grass_polar")
		else
			inst.AnimState:SetBank("grass")
			inst.AnimState:SetBuild("grass1")
		end
		
		inst.inpolar = inpolar
	end
end

ENV.AddPrefabPostInit("dug_grass_placer", function(inst)
	inst.DoPolarUpdate = DoPolarUpdate
	
	inst._polarupdate = inst:DoPeriodicTask(FRAMES, inst.DoPolarUpdate)
end)