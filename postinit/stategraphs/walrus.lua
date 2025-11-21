local ENV = env
GLOBAL.setfenv(1, GLOBAL)

require("stategraphs/commonstates")
require("stategraphs/commonstates_polar")

local events = {
	-- Buff event ?
}

local states = {
	
}

CommonStates.AddSimpleActionState(states, "deploy_beartrap", "pig_take", 15 * FRAMES, {"busy"})

ENV.AddStategraphPostInit("walrus", function(sg)
	CommonStates.AddWalrusBeartrapHandlers(states, events, {
		anims = {trapped_playanim = "hit", trapped_pushanim = "idle_scared"},
	})
	
	for _, event in pairs(events) do
		sg.events[event.name] = event
	end
	
	for _, state in pairs(states) do
		sg.states[state.name] = state
	end
	
	--	actions
	
    local olddeploy = sg.actionhandlers[ACTIONS.DEPLOY] and sg.actionhandlers[ACTIONS.DEPLOY].deststate
	sg.actionhandlers[ACTIONS.DEPLOY] = ActionHandler(ACTIONS.DEPLOY, function(inst, action, ...)
		if action.invobject and action.invobject:HasTag("walrus_beartrap") then
			return "deploy_beartrap"
		end
		
		if olddeploy then
			return olddeploy(inst, action, ...)
		end
	end)
	
	--	events
	
	local oldattack = sg.events["doattack"].fn
	sg.events["doattack"].fn = function(inst, ...)
		if inst.prefab == "girl_walrus" then
			if not (inst.sg:HasStateTag("electrocute") or inst.components.health and inst.components.health:IsDead()) then
				inst.sg:GoToState("attack")
			end
		elseif oldattack then
			oldattack(inst, ...)
		end
	end
end)