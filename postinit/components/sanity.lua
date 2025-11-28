local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local Sanity = require("components/sanity")
	
	local OldDoDelta = Sanity.DoDelta
	function Sanity:DoDelta(delta, ...)
		if self.inst:HasTag("frozenstats") then
			WandaTimeFreezeDrain(self.inst, "sanity", delta, self.current, self.max)
			delta = 0
		end
		
		return OldDoDelta(self, delta, ...)
	end