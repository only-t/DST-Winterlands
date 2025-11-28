local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local OldonPreBuilt
local function OnPreBuilt(inst, builder, materials, recipe, ...)
	if OldonPreBuilt then
		OldonPreBuilt(inst, builder, materials, recipe, ...)
	end
	
	local walrus_recipe = (recipe.name == "girl_walrus_trade_cookingrecipecard1" and "koalefried_trunk_summer")
		or (recipe.name == "girl_walrus_trade_cookingrecipecard2" and "koalefried_trunk_winter")
		or nil
	
	if inst.components.named and walrus_recipe then
		inst.cooker_name = "cookpot"
		inst.recipe_name = walrus_recipe
		inst.keep_unique_recipes = true
		inst.components.named:SetName(subfmt(STRINGS.NAMES.COOKINGRECIPECARD, {item = STRINGS.NAMES[string.upper(walrus_recipe)]}))
	end
end

local OldOnLoad
local function OnLoad(inst, data, ...)
	if data and data.r then
		inst.keep_unique_recipes = true
	end
	if OldOnLoad then
		OldOnLoad(inst, data, ...)
	end
end

local POLAR_UNIQUE_RECIPES = {"koalefried_trunk_summer", "koalefried_trunk_winter", "icecream_emperor"}

local function OnPolarInit(inst)
	local PickRandomRecipe = PolarUpvalue(Prefabs.cookingrecipecard.fn, "PickRandomRecipe")
	
	-- We don't want certain of our recipe cards to appear randomly !
	if PickRandomRecipe and not inst.keep_unique_recipes then
		while table.contains(POLAR_UNIQUE_RECIPES, inst.recipe_name) do
			PickRandomRecipe(inst)
		end
	end
end

ENV.AddPrefabPostInit("cookingrecipecard", function(inst)
	if not TheWorld.ismastersim then
		return
	end
	
	if not OldOnLoad then
		OldOnLoad = inst.OnLoad
	end
	inst.OnLoad = OnLoad
	
	if not OldonPreBuilt then
		OldonPreBuilt = inst.onPreBuilt
	end
	inst.onPreBuilt = OnPreBuilt
	
	inst:DoTaskInTime(0, OnPolarInit)
end)