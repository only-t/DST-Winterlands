local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local function MoleOnLocomote(inst)
	local x, y, z = inst.Transform:GetWorldPosition()
	local inpolar = IsInPolar(inst)
	
	if inpolar and not inst.polar_mole then
		inst.AnimState:OverrideSymbol("dirt_base", "dirt_to_polar_builds", "dirt_base")
		inst.AnimState:OverrideSymbol("hill", "dirt_to_polar_builds", "hill")
		inst.AnimState:OverrideSymbol("wormmovefx", "dirt_to_polar_builds", "wormmovefx")
	elseif not inpolar and inst.polar_mole then
		inst.AnimState:ClearOverrideSymbol("dirt_base")
		inst.AnimState:ClearOverrideSymbol("hill")
		inst.AnimState:ClearOverrideSymbol("wormmovefx")
	end
	
	inst.polar_mole = inpolar
end

ENV.AddPrefabPostInit("mole", function(inst)
	if not TheWorld.ismastersim then
		return
	end
	
	inst:ListenForEvent("locomote", MoleOnLocomote)
	inst:DoTaskInTime(0, MoleOnLocomote)
end)

--

local function PolarInit(inst)
	local x, y, z = inst.Transform:GetWorldPosition()
	if GetClosestPolarTileToPoint(x, 0, z, 32) then
		inst.AnimState:OverrideSymbol("dirt_base", "dirt_to_polar_builds", "dirt_base")
		inst.AnimState:OverrideSymbol("hill", "dirt_to_polar_builds", "hill")
		inst.AnimState:OverrideSymbol("wormmovefx", "dirt_to_polar_builds", "wormmovefx")
	end
end

ENV.AddPrefabPostInit("molehill", function(inst)
	inst:AddTag("icicleimmune")
	
	if not TheWorld.ismastersim then
		return
	end
	
	inst:DoTaskInTime(0, PolarInit)
end)

--

local function PolarInit_Fx(inst)
	local x, y, z = inst.Transform:GetWorldPosition()
	if GetClosestPolarTileToPoint(x, 0, z, 32) then
		ReplacePrefab(inst, "mole_move_polar_fx")
	end
end

ENV.AddPrefabPostInit("mole_move_fx", function(inst)
	inst:DoTaskInTime(0, PolarInit_Fx)
end)