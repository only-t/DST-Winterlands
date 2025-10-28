local ENV = env
GLOBAL.setfenv(1, GLOBAL)

ENV.AddComponentPostInit("regrowthmanager", function(self)
	self:SetRegrowthForType("antler_tree", TUNING.ANTLER_TREE_REGROWTH_TIME, "antler_tree_sapling", function()
		return TUNING.ANTLER_TREE_REGROWTH_TIME_MULT
	end)
end)