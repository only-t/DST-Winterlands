local ENV = env
GLOBAL.setfenv(1, GLOBAL)

require("stategraphs/commonstates_polar")

local function Bearger_trapped_playanim(inst)
	return inst.prefab == "mutatedbearger" and "stagger_pre" or nil
end

local function Bearger_trapped_pushanim(inst)
	return inst.prefab == "mutatedbearger" and "stagger" or nil
end

local function Bearger_hit_playanim(inst)
	return inst.prefab == "mutatedbearger" and "stagger_hit" or nil
end

--TODO: daywalker(s) break his foot if snared

local trapped_stategraphs = {
	bunnyman 	= {anims = {trapped_playanim = "hit", trapped_pushanim = "frozen_loop_pst"}},
	merm 		= {anims = {trapped_playanim = "hit", trapped_pushanim = "idle_scared"}},
	pig 		= {anims = {trapped_playanim = "hit", trapped_pushanim = "idle_scared"}},
-- 	walrus 		= walrus postinit
	
	-- TODO: This is going to require some custom animation, basic Bearger/Varg can't replicate these animations from missing symbols. I'll do it tomorrow-row-row
	bearger 	= {anims = {trapped_playanim = Bearger_trapped_playanim, trapped_pushanim = Bearger_trapped_pushanim, struggle_playanim = Bearger_hit_playanim}},
	hound 		= {anims = {trapped_playanim = "scared_pre", trapped_pushanim = "scared_loop"}, no_hit_state = true},
	warg 		= {anims = {trapped_playanim = "stagger_pre", trapped_pushanim = "stagger", hit_playanim = "stagger_hit", struggle_playanim = "stagger_hit"}},
}

for sg_name, sg_data in pairs(trapped_stategraphs) do
	local events = {}
	local states = {}
	
	ENV.AddStategraphPostInit(sg_name, function(sg)
		CommonStates.AddWalrusBeartrapHandlers(states, events, {
			anims = sg_data.anims,
		})
		
		for _, event in pairs(events) do
			sg.events[event.name] = event
		end
		
		for _, state in pairs(states) do
			sg.states[state.name] = state
		end
		
		if sg_data.no_hit_state then -- This is for snareable mobs that enter hit state when attacked while trapped, we don't want this to happen !
			local oldattacked = sg.events["attacked"].fn
			sg.events["attacked"].fn = function(inst, data, ...)
				if inst:HasTag("walrus_beartrapped") then
					return
				end
				
				if oldattacked then
					oldattacked(inst, data, ...)
				end
			end
		end
	end)
end