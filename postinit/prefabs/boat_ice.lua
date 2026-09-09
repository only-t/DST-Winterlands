local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local boat_ice_prefabs = {"boat_ice", "boat_ice_crabking"}

for i, prefab in ipairs(boat_ice_prefabs) do
	ENV.AddPrefabPostInit(prefab, function(inst)
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
end