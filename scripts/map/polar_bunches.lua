local Bunches = {
	polarfish_shoalspawner_spawner_ice = {
		prefab = function(world, spawnerx, spawnerz)
			local rad = 4
			
			for _z = -rad, rad do
				for _x = -rad, rad do
					local x = spawnerx + _x
					local z = spawnerz + _z
					
					local tile = world:GetTile(x, z)
					if not TileGroupManager:IsInvalidTile(tile) and tile ~= WORLD_TILES.OCEAN_POLAR and tile ~= WORLD_TILES.OCEAN_COASTAL and tile ~= WORLD_TILES.POLAR_ICE then
						return nil
					end
				end
			end
			
			return "polarfish_shoalspawner"
		end,
		range = 20,
		min = 1,
		max = 2,
		min_spacing = 20,
		valid_tile_types = {
			WORLD_TILES.OCEAN_COASTAL,
			WORLD_TILES.OCEAN_POLAR,
			WORLD_TILES.POLAR_ICE,
		},
	},
}

return {
	Bunches = Bunches,
}