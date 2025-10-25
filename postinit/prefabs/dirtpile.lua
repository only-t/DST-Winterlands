local ENV = env
GLOBAL.setfenv(1, GLOBAL)

--	TODO: convert dirt into snow

ENV.AddPrefabPostInit("animal_track", function(inst)
	inst:AddTag("snowblocker")
	
	inst._snowblockrange = net_smallbyte(inst.GUID, "animal_track._snowblockrange")
	inst._snowblockrange:set(3)
end)

ENV.AddPrefabPostInit("dirtpile", function(inst)
	inst:AddTag("snowblocker")
	
	inst._snowblockrange = net_smallbyte(inst.GUID, "dirtpile._snowblockrange")
	inst._snowblockrange:set(3)
end)