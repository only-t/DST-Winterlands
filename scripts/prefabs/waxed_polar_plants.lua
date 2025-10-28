local WAXED_PLANTS = require "prefabs/waxed_plant_common"

ASSETS = {
	Asset("SCRIPT", "scripts/prefabs/waxed_plant_common.lua")
}

local function Plantable_GetAnimFn(inst)
	if inst.components.pickable and inst.components.pickable:CanBePicked() then
		return "idle"
	end
	
	if (inst.components.pickable and inst.components.pickable:IsBarren()) or (inst.components.witherable and inst.components.witherable:IsWithered()) then
		return "dead"
	end
	
	return "picked"
end

local function TreeSapling_GetAnimFn(inst)
	return inst.prefab
end

-------------------------------------------------------------------------------------------------

local GRASS_ANIMSET = {
	idle = {anim = "idle"},
	picked = {anim = "picked"},
	dead = {anim = "idle_dead"},
}

local function Grass_MultColorFn()
	return 0.75 + math.random() * 0.25
end

-------------------------------------------------------------------------------------------------

local function CreateWaxedTreeSapling(name, _build, _anim, deployspacing)
	local animset = {[name.."_sapling"] = {anim = _anim}}
	
	return WAXED_PLANTS.CreateWaxedPlant({
		prefab = name.."_sapling",
		bank = _build,
		build = _build,
		anim = _anim,
		action = "DIG",
		animset = animset,
		getanim_fn = TreeSapling_GetAnimFn,
		assets = ASSETS,
		deployspacing = deployspacing,
	})
end

-------------------------------------------------------------------------------------------------

local ret = {
	CreateWaxedTreeSapling("antler_tree", "antler_tree_sapling", "idle_planted"),
	
	WAXED_PLANTS.CreateWaxedPlant({
		prefab = "grass_polar",
		bank = "grass_tall",
		build = "grass_polar",
		minimapicon = "grass",
		anim = "idle",
		action = "DIG",
		animset = GRASS_ANIMSET,
		getanim_fn = Plantable_GetAnimFn,
		multcolor = Grass_MultColorFn,
		assets = ASSETS,
		deployspacing = DEPLOYSPACING.MEDIUM,
	}),
}

return unpack(ret)