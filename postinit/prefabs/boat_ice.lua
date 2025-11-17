local ENV = env
GLOBAL.setfenv(1, GLOBAL)

ENV.AddPrefabPostInit("boat_ice", function(inst)
	inst.walksound = "iceslab"
	
	if not TheWorld.ismastersim then
		return
	end
	
	if inst.components.repairable == nil then
		inst:AddComponent("repairable")
	end
	if inst.components.repairable.repairmaterial == nil then
		inst.components.repairable.repairmaterial = MATERIALS.ICE
	end
end)