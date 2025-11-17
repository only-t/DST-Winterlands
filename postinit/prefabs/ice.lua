local ENV = env
GLOBAL.setfenv(1, GLOBAL)

ENV.AddPrefabPostInit("ice", function(inst)
	if not TheWorld.ismastersim then
		return
	end
	
	if inst.components.repairer and inst.components.repairer.healthrepairvalue == 0 then
		inst.components.repairer.healthrepairvalue = TUNING.REPAIR_ROCKS_HEALTH
	end
end)

--

local function OnIcicleSmashed(inst, data)
	local num_shards = math.random(TUNING.POLAR_ICICLE_NUMSHARDS.bluegem.min, TUNING.POLAR_ICICLE_NUMSHARDS.bluegem.max)
	local x, y, z = inst.Transform:GetWorldPosition()
	local small = data and data.small
	
	for i = 1, num_shards do
		local shard = SpawnPrefab("bluegem_shards")
		shard.components.inventoryitem:DoDropPhysics(x, y, z, true, small and 0.5 or (1.5 + math.random()))
	end
	
	if small then
		SpawnPrefab("ground_chunks_breaking").Transform:SetPosition(x, y, z)
		inst:Remove()
	end
end

ENV.AddPrefabPostInit("bluegem", function(inst)
	if not TheWorld.ismastersim then
		return
	end
	
	inst:ListenForEvent("iciclesmashed", OnIcicleSmashed)
end)