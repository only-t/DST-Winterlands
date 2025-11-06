local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local tracks = {"animal_track", "dirtpile"}

local function PolarInit(inst)
	local x, y, z = inst.Transform:GetWorldPosition()
	if GetClosestPolarTileToPoint(x, 0, z, 32) then
		inst.AnimState:OverrideSymbol("art", "dirt_to_polar_builds", "art")
	end
end

for i, v in ipairs(tracks) do
	ENV.AddPrefabPostInit(v, function(inst)
		inst:AddTag("snowblocker")
		
		inst._snowblockrange = net_smallbyte(inst.GUID, "animal_track._snowblockrange")
		inst._snowblockrange:set(3)
		
		if not TheWorld.ismastersim then
			return
		end
		
		inst:DoTaskInTime(0, PolarInit)
	end)
end