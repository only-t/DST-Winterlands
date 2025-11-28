local assets = {
	Asset("ANIM", "anim/walrus_actions.zip"),
	Asset("ANIM", "anim/walrus_attacks.zip"),
	Asset("ANIM", "anim/walrus_basic.zip"),
	Asset("ANIM", "anim/walrus_girl.zip"),
	
	Asset("SOUND", "sound/mctusky.fsb"),
}

local prefabs = {
	"goldnugget",
	"meat",
	"walrus_bagpipe",
	"walrus_trap",
	"walrus_tusk",
}

local brain = require "brains/girl_walrusbrain"

SetSharedLootTable("girl_walrus", {
	{"goldnugget", 		0.8},
	{"meat", 			1},
	{"walrus_bagpipe", 	1},
	{"walrus_trap", 	0.5},
	{"walrus_tusk", 	0.5},
})

local function ShareTargetFn(dude)
	return dude:HasTag("walrus") and not dude.components.health:IsDead()
end

local function OnAttacked(inst, data)
	inst.components.combat:SetTarget(data.attacker)
	inst.components.combat:ShareTarget(data.attacker, 30, ShareTargetFn, 5)
end

local RETARGET_MUST_TAGS = {"_combat"}
local RETARGET_CANT_TAGS = {"hound", "walrus"}
local RETARGET_ONEOF_TAGS = {"character", "monster"}

local function Retarget(inst)
	return FindEntity(inst, TUNING.WALRUS_TARGET_DIST, function(guy)
		return inst.components.combat:CanTarget(guy)
	end, RETARGET_MUST_TAGS, RETARGET_CANT_TAGS, RETARGET_ONEOF_TAGS)
end

local function KeepTarget(inst, target)
	return inst:IsNear(target, TUNING.WALRUS_LOSETARGET_DIST)
end

local function DoReturn(inst)
	if inst.components.homeseeker and inst.components.homeseeker.home then
		inst.components.homeseeker.home:PushEvent("onwenthome", {doer = inst})
		inst:Remove()
	end
end

local function OnTurnOn(inst)
	local target = inst.components.combat.target
	
	if target == nil and inst.sg and not inst.sg:HasStateTag("busy") and inst.components.timer and not inst.components.timer:TimerExists("walrustrade_greet") then
		inst.components.timer:StartTimer("walrustrade_greet", 30)
		inst.sg:GoToState("funny_idle")
		inst.AnimState:PlayAnimation("idle_creepy")
	end
end

local function OnTurnOff(inst)
	
end

local function OnActivate(inst, doer, recipe)
	local target = inst.components.combat.target
	
	if target == nil and inst.sg and not inst.sg:HasStateTag("busy") then
		inst.sg:GoToState("funny_idle")
	end
	
	if recipe == nil or inst.components.craftingstation == nil then
		return
	end
	
	local product = recipe.product
	local amount = recipe.numtogive or 1
	
	local trades_data = POLARWALRUS_TRADEDATA[inst.prefab]
	if trades_data == nil then
		return
	end
	
	local product_counts = {}
	
	for i, data in ipairs(trades_data) do
		product_counts[data.product] = (product_counts[data.product] or 0) + 1
		
		if data.product == product then
			local recipe_name = string.format(inst.prefab.."_trade_%s%d", data.product, product_counts[data.product])
			
			if not trades_data[i].nosharedstock then
				local old = inst.components.craftingstation:GetRecipeCraftingLimit(recipe_name) or 0
				local new = math.max(0, old - amount + (recipe.name == recipe_name and 1 or 0))
				
				inst.components.craftingstation:SetRecipeCraftingLimit(recipe_name, new)
				if recipe.name ~= recipe_name then
					inst.components.craftingstation:ForgetRecipe(recipe_name)
				end
			end
		end
	end
end

local function ShouldSleep(inst)
	return not (inst.components.homeseeker and inst.components.homeseeker:HasHome()) and DefaultSleepTest(inst)
end

local function OnEntitySleep(inst)
	if not TheWorld.state.isday then
		DoReturn(inst)
	end
end

local function OnSave(inst, data)
	data.flare_summoned = inst:HasTag("flare_summoned")
	data.got_traps = inst._equiptraps ~= nil
end

local function OnLoad(inst, data)
	if data then
		if data.flare_summoned then
			inst:AddTag("flare_summoned")
		end
		if data.got_traps and inst._equiptraps then
			inst._equiptraps:Cancel()
		end
	end
end

local function OnStopDay(inst)
	if inst:IsAsleep() then
		DoReturn(inst)
	end
end

local function OnTimerDone(inst, data)
	if data.name == "walrustrade_refresh" then
		inst:PolarTradesRefresh()
		inst.components.timer:StartTimer("walrustrade_refresh", math.random(TUNING.WALRUSTRADES_REFRESH_TIMES.min, TUNING.WALRUSTRADES_REFRESH_TIMES.max))
	end
end

local function PolarTradesRefresh(inst, initial)
	local trades_data = POLARWALRUS_TRADEDATA[inst.prefab]
	
	if trades_data == nil or inst.components.craftingstation == nil then
		return
	end
	
	local product_counts = {}
	
	for i, recipe_data in ipairs(trades_data) do
		product_counts[recipe_data.product] = (product_counts[recipe_data.product] or 0) + 1
		local recipe_name = string.format(inst.prefab.."_trade_%s%d", recipe_data.product, product_counts[recipe_data.product])
		
		inst.components.craftingstation:LearnItem(recipe_name, recipe_name)
		
		if recipe_data.limit then
			--[[if initial then
				inst.components.craftingstation:SetRecipeCraftingLimit(recipe_name, recipe_data.limit)
			else]]
				local old = inst.components.craftingstation:GetRecipeCraftingLimit(recipe_name) or 0
				local restock_amt = recipe_data.restock or TUNING.WALRUSTRADES_RESTOCK_AMT
				
				local new = math.min(recipe_data.limit, old + restock_amt)
				
				inst.components.craftingstation:SetRecipeCraftingLimit(recipe_name, new)
			--end
		end
	end
end

local function OnInit(inst)
	if inst.components.timer and not inst.components.timer:TimerExists("walrustrade_refresh") then
		inst:PolarTradesRefresh(true)
		inst.components.timer:StartTimer("walrustrade_refresh", math.random(TUNING.WALRUSTRADES_REFRESH_TIMES.min, TUNING.WALRUSTRADES_REFRESH_TIMES.max))
	end
end

local function EquipTraps(inst)
	if inst.components.inventory then
		for i = 1, TUNING.GIRL_WALRUS_MAX_TRAPS do
			local trap = SpawnPrefab("walrus_beartrap")
			
			if trap.components.finiteuses then
				trap.components.finiteuses:Use(math.ceil(trap.components.finiteuses:GetUses() * math.random(5, 7) * 0.1))
			end
			inst.components.inventory:GiveItem(trap)
		end
	end
end

local function fn()
	local inst = CreateEntity()
	
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddDynamicShadow()
	inst.entity:AddNetwork()
	
	MakeCharacterPhysics(inst, 50, 0.5)
	
	inst.DynamicShadow:SetSize(2.5, 1.5)
	inst.Transform:SetFourFaced()
	inst.Transform:SetScale(1.5, 1.5, 1.5)
	
	inst.AnimState:SetBank("walrus")
	inst.AnimState:SetBuild("walrus_girl")
	inst.AnimState:SetMultColour(0.9, 0.9, 0.95, 1)
	inst.AnimState:Hide("hat")
	
	inst:AddTag("character")
	inst:AddTag("prototyper")
	inst:AddTag("walrus")
	inst:AddTag("walrus_support")
	inst:AddTag("houndfriend")
	
	inst.entity:SetPristine()
	
	if not TheWorld.ismastersim then
		return inst
	end
	
	inst:AddComponent("combat")
	inst.components.combat.hiteffectsymbol = "pig_torso"
	inst.components.combat:SetRange(TUNING.GIRL_WALRUS_ATTACK_DIST)
	inst.components.combat:SetDefaultDamage(TUNING.GIRL_WALRUS_DAMAGE)
	inst.components.combat:SetAttackPeriod(TUNING.GIRL_WALRUS_ATTACK_PERIOD)
	inst.components.combat:SetRetargetFunction(1, Retarget)
	inst.components.combat:SetKeepTargetFunction(KeepTarget)
	
	inst:AddComponent("craftingstation")
	
	inst:AddComponent("drownable")
	
	inst:AddComponent("follower")
	
	inst:AddComponent("eater")
	inst.components.eater:SetDiet({FOODTYPE.MEAT}, {FOODTYPE.MEAT})
	
	inst:AddComponent("health")
	inst.components.health:SetMaxHealth(TUNING.GIRL_WALRUS_HEALTH)
	
	inst:AddComponent("inventory")
	
	inst:AddComponent("inspectable")
	
	inst:AddComponent("locomotor")
	inst.components.locomotor.runspeed = 6
	inst.components.locomotor.walkspeed = 2
	
	inst:AddComponent("lootdropper")
	inst.components.lootdropper:SetChanceLootTable("girl_walrus")
	
	inst:AddComponent("prototyper")
	inst.components.prototyper.onturnon = OnTurnOn
	inst.components.prototyper.onturnoff = OnTurnOff
	inst.components.prototyper.onactivate = OnActivate
	inst.components.prototyper.trees = TUNING.PROTOTYPER_TREES.WANDERINGWALRUSSHOP
	inst.components.prototyper.restrictedtag = "walruspal"
	
	inst:AddComponent("sleeper")
	inst.components.sleeper:SetSleepTest(ShouldSleep)
	
	inst:AddComponent("timer")
	
	MakeMediumBurnableCharacter(inst, "pig_torso")
	MakeMediumFreezableCharacter(inst, "pig_torso")
	inst.components.freezable:SetResistance(5)
	inst.components.freezable:SetDefaultWearOffTime(1)
	
	MakeHauntablePanic(inst)
	
	inst:AddComponent("leader")
	
	inst.OnEntitySleep = OnEntitySleep
	inst.OnSave = OnSave
	inst.OnLoad = OnLoad
	inst.PolarTradesRefresh = PolarTradesRefresh
	inst.soundgroup = "mctusk"
	
	inst:ListenForEvent("attacked", OnAttacked)
	inst:WatchWorldState("stopday", OnStopDay)
	inst:ListenForEvent("timerdone", OnTimerDone)
	
	inst:SetStateGraph("SGwalrus")
	
	inst:SetBrain(brain)
	
	inst:DoTaskInTime(0, OnInit)
	inst._equiptraps = inst:DoTaskInTime(0, EquipTraps)
	
	return inst
end

return Prefab("girl_walrus", fn, assets, prefabs)