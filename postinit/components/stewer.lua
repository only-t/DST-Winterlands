local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local Cooking = require("cooking")

local Stewer = require("components/stewer")
	
	local function OnGetPolarFlea(inst, data)
		local flea = data and data.flea
		
		if inst.components.stewer and not inst.components.stewer:IsCooking() and inst.components.container and
			not inst.components.container:IsOpen() and inst.components.container:IsFull() then
			
			inst.components.stewer:StartCooking() -- Should flea be cooker ?
		end
	end
	
	local OldStewer_ctor = Stewer._ctor
	Stewer._ctor = function(self, ...)
		OldStewer_ctor(self, ...)
		
		self.OnGetPolarFlea = OnGetPolarFlea
		
		self.inst:ListenForEvent("gotpolarflea", self.OnGetPolarFlea)
	end

	local OldHarvest = Stewer.Harvest
	function Stewer:Harvest(harvester, ...)
		local emperor_icecream = self.done and self.product == "icecream_emperor"
		local recipe = emperor_icecream and Cooking.GetRecipe(self.inst.prefab, "icecream") or nil
		local recipe_emperor = emperor_icecream and Cooking.GetRecipe(self.inst.prefab, "icecream_emperor") or nil
		local oldstacksize
		
		-- Sure wish doing alternative recipes wasn't this hacky
		if recipe and recipe_emperor then
			oldstacksize = recipe.stacksize
			recipe.stacksize = recipe_emperor.stacksize
			
			self.product = "icecream"
		end
		
		local ret = OldHarvest(self, harvester, ...)
		
		if recipe and recipe_emperor then
			recipe.stacksize = oldstacksize
		end
		
		return ret
	end