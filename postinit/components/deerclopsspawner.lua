local ENV = env
GLOBAL.setfenv(1, GLOBAL)

--[[TODO: Deerclops should be able to be summoned at anytime using the Hostile Flare in the Winterlands

local DeerclopsSpawner = require("components/deerclopsspawner")
local OldDeerclopsSpawner_ctor = DeerclopsSpawner._ctor

DeerclopsSpawner._ctor = function(self, inst, ...)
	OldDeerclopsSpawner_ctor(self, inst, ...)
	
	if inst.event_listeners.megaflare_detonated and inst.event_listeners.megaflare_detonated[TheWorld] then
		local OnMegaFlare = inst.event_listeners.megaflare_detonated[TheWorld][1]
		
		inst.event_listeners.megaflare_detonated[TheWorld][1] = function(src, data, ...)
			if OnMegaFlare then
				OnMegaFlare(src, data, ...)
			end
		end
	end
end]]