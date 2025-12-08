local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local CAGE_STATES = {
	DEAD = "_death",
	SKELETON = "_skeleton",
	EMPTY = "_empty",
	FULL = "_bird",
	SICK = "_sick",
}

local FREEZE_COLOUR = {82 / 255, 115 / 255, 124 / 255, 0}

local GetBird
local StartAnimationTask
local StopAnimationTask

--

local OldSetCageState
local function SetCageState(inst, state, ...)
	if state ~= CAGE_STATES.FULL and inst.components.freezable and inst.components.freezable:IsFrozen() then
		inst.components.freezable:Unfreeze()
	end
	if OldSetCageState then
		OldSetCageState(inst, state, ...)
	end
end

local OldDigestFood
local function DigestFood(inst, food, ...)
	if food and (food.prefab == "icelettuce" or food.prefab == "icelettuce_seeds") and inst.components.freezable and inst.CAGE_STATE == CAGE_STATES.FULL then
		inst.components.freezable:AddColdness(TUNING.ICELETTUCE_FREEZABLE_COLDNESS)
	end
	if OldDigestFood then
		return OldDigestFood(inst, food, ...)
	end
end

local OldShouldAcceptItem
local function ShouldAcceptItem(inst, ...)
	if inst.components.freezable and inst.components.freezable:IsFrozen() then
		return false
	end
	if OldShouldAcceptItem then
		return OldShouldAcceptItem(inst, ...)
	end
	
	return true
end

local OldOnRefuseItem
local function OnRefuseItem(inst, ...)
	if inst.components.freezable and inst.components.freezable:IsFrozen() then
		return
	end
	if OldOnRefuseItem then
		return OldOnRefuseItem(inst, ...)
	end
end

local OldOnWorked
local function OnWorked(inst, ...)
	if inst.components.freezable and inst.components.freezable:IsFrozen() then
		inst.components.freezable:Unfreeze()
	end
	if OldOnWorked then
		OldOnWorked(inst, ...)
	end
end

--

local function OnFreeze(inst)
	inst.AnimState:PlayAnimation("frozen", true)
	inst.SoundEmitter:PlaySound("dontstarve/common/freezecreature")
	
	local bird = GetBird and GetBird(inst)
	if bird then
		if bird.components.sleeper and bird.components.sleeper:IsAsleep() then
			bird.components.sleeper:WakeUp()
		end
	end
	if inst.components.sleeper and inst.components.sleeper:IsAsleep() then
		inst.components.sleeper:WakeUp()
	end
	
	StopAnimationTask(inst)
end

local function OnThaw(inst)
	inst.AnimState:PlayAnimation("frozen_loop_pst", true)
	inst.SoundEmitter:PlaySound("dontstarve/common/freezethaw", "thawing")
end

local function OnUnfreeze(inst)
	if inst.components.sleeper and inst.components.sleeper:IsAsleep() then
		inst.components.sleeper:WakeUp()
	end
	
	inst.AnimState:PlayAnimation("flap")
	inst.AnimState:PushAnimation("idle_bird", true)
	inst.SoundEmitter:KillSound("thawing")
	
	StartAnimationTask(inst)
end

local OldGoToSleep
local function GoToSleep(inst, ...)
	if inst.components.freezable and inst.components.freezable:IsFrozen() then
		inst.components.sleeper:WakeUp()
		return
	end
	if OldGoToSleep then
		OldGoToSleep(inst, ...)
	end
end

local OldWakeUp
local function WakeUp(inst, ...)
	if inst.components.freezable and inst.components.freezable:IsFrozen() then
		return
	end
	if OldWakeUp then
		OldWakeUp(inst, ...)
	end
end

ENV.AddPrefabPostInit("birdcage", function(inst)
	if not TheWorld.ismastersim then
		return
	end
	
	if inst.components.trader then
		if OldShouldAcceptItem == nil then
			OldShouldAcceptItem = inst.components.trader.test
		end
		inst.components.trader:SetAcceptTest(ShouldAcceptItem)
		if OldOnRefuseItem == nil then
			OldOnRefuseItem = inst.components.trader.onrefuse
		end
		inst.components.trader.onrefuse = OnRefuseItem
		
		if OldDigestFood == nil then
			GetBird = PolarUpvalue(inst.components.trader.onaccept, "GetBird")
			OldDigestFood = PolarUpvalue(inst.components.trader.onaccept, "DigestFood")
			PolarUpvalue(inst.components.trader.onaccept, "DigestFood", DigestFood)
		end
	end
	
	if OldSetCageState == nil and inst.components.occupiable then
		StartAnimationTask = PolarUpvalue(inst.components.occupiable.onoccupied, "StartAnimationTask")
		StopAnimationTask = PolarUpvalue(inst.components.occupiable.onemptied, "StopAnimationTask")
		OldSetCageState = PolarUpvalue(inst.components.occupiable.onoccupied, "SetCageState")
		PolarUpvalue(inst.components.occupiable.onoccupied, "SetCageState", SetCageState)
	end
	
	if inst.components.workable then
		if OldOnWorked == nil then
			OldOnWorked = inst.components.workable.onwork
		end
		inst.components.workable:SetOnWorkCallback(OnWorked)
	end
	
	if inst.components.freezable == nil then
		MakeTinyFreezableCharacter(inst, "crow_body")
		inst.AnimState:OverrideSymbol("swap_frozen", "frozen", "frozen")
		
		local OldFreeze = inst.components.freezable.Freeze
		inst.components.freezable.Freeze = function(self, ...)
			if inst.CAGE_STATE == CAGE_STATES.EMPTY then
				return
			end
			
			OldFreeze(self, ...)
		end
		
		inst.components.freezable.UpdateTint = function(self, ...)
			local resistance = inst.components.freezable:ResolveResistance()
			local percent = (inst.components.freezable:IsFrozen() and 1 or (inst.components.freezable.coldness / resistance)) * 0.5
			
			local bird_symbols = {
				"swap_frozen", "crow_beak", "crow_body", "crow_eye", "crow_leg", "crow_wing", "tail_feather", "bird_gem",
				"mooncrow_body", "mooncrow_eye", "mooncrow_foot", "mooncrow_head", "mooncrow_leg", "mooncrow_neck", "mooncrow_tail", "mooncrow_wing",
				"robin_beak", "robin_body", "robin_eye", "robin_foot", "robin_leg", "robin_tail", "robin_tongue", "robin_wing1", "robin_wing2",
			}
			
			for i, v in ipairs(bird_symbols) do
				inst.AnimState:SetSymbolAddColour(v, FREEZE_COLOUR[1] * percent, FREEZE_COLOUR[2] * percent, FREEZE_COLOUR[3] * percent, FREEZE_COLOUR[4])
			end
		end
		
		inst:ListenForEvent("freeze", OnFreeze)
		inst:ListenForEvent("onthaw", OnThaw)
		inst:ListenForEvent("unfreeze", OnUnfreeze)
		
		if OldGoToSleep == nil and inst.event_listeners.gotosleep then
			OldGoToSleep = inst.event_listeners.gotosleep[inst][1]
			OldWakeUp = inst.event_listeners.onwakeup[inst][1]
		end
		if OldGoToSleep then
			inst.event_listeners.gotosleep[inst][1] = GoToSleep
			inst.event_listeners.onwakeup[inst][1] = WakeUp
		end
	end
end)