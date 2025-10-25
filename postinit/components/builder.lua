local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local function HasSnowIngredient(self, ingredient)
	if ingredient.type and ingredient.type == "polarsnow_material" then
		local x, y, z = self.inst.Transform:GetWorldPosition()
		
		return self.inst.nearhighsnow:value()
	end
end

local Builder = require("components/builder")
	
	local OldDoBuild = Builder.DoBuild
	function Builder:DoBuild(recname, pt, ...)
		local recipe = recname and GetValidRecipe(recname)
		local block_range = TUNING.SNOW_PLOW_RANGES.REPLACED or 0
		
		if recipe and recipe.placer and block_range > 0 then
			SpawnPolarSnowBlocker(pt, block_range, TUNING.POLARPLOW_BLOCKER_DURATION, self.inst)
		end
		
		return OldDoBuild(self, recname, pt, ...)
	end
	
	local OldHasTechIngredient = Builder.HasTechIngredient
	function Builder:HasTechIngredient(ingredient, ...)
		
		return HasSnowIngredient(self, ingredient) or OldHasTechIngredient(self, ingredient, ...)
	end
	
local BuilderReplica = require("components/builder_replica")
	
	local OldHasTechIngredientReplica = BuilderReplica.HasTechIngredient
	function BuilderReplica:HasTechIngredient(ingredient, ...)
		return HasSnowIngredient(self, ingredient) or OldHasTechIngredientReplica(self, ingredient, ...)
	end