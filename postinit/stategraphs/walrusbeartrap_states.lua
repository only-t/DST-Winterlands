local ENV = env
GLOBAL.setfenv(1, GLOBAL)

require("stategraphs/commonstates_polar")

local function Bearger_trapped_playanim(inst)
	return inst.prefab == "mutatedbearger" and "stagger_pre" or "beartrap_snared_pre"
end

local function Bearger_trapped_pushanim(inst)
	return inst.prefab == "mutatedbearger" and "stagger" or "beartrap_snared_loop"
end

local function Bearger_hit_playanim(inst)
	return inst.prefab == "mutatedbearger" and "stagger_hit" or "beartrap_snared_hit"
end

--TODO: daywalker(s) break his foot if snared

local trapped_stategraphs = {
	bunnyman 	= {anims = {trapped_playanim = "hit", trapped_pushanim = "frozen_loop_pst"}},
	hound 		= {anims = {trapped_playanim = "scared_pre", trapped_pushanim = "scared_loop"}, no_hit_state = true},
	merm 		= {anims = {trapped_playanim = "hit", trapped_pushanim = "idle_scared"}},
	pig 		= {anims = {trapped_playanim = "hit", trapped_pushanim = "idle_scared"}},
-- 	walrus 		= walrus postinit
	
--	NOTE: Bearger/Walrus could use their stagger states but animations are alas broken for non-mutated type. For now we let them fallback to panic behavior...

	--bearger 	= {anims = {trapped_playanim = Bearger_trapped_playanim, trapped_pushanim = Bearger_trapped_pushanim, struggle_playanim = Bearger_hit_playanim}},
	--warg 		= {anims = {trapped_playanim = "stagger_pre", trapped_pushanim = "stagger", hit_playanim = "stagger_hit", struggle_playanim = "stagger_hit"}},
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