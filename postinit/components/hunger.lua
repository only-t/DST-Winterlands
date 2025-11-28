local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local Hunger = require("components/hunger")
	
	local OldDoDelta = Hunger.DoDelta
	function Hunger:DoDelta(delta, ...)
		if self.inst:HasTag("frozenstats") then
			WandaTimeFreezeDrain(self.inst, "hunger", delta, self.current, self.max)
			delta = 0
		end
		
		return OldDoDelta(self, delta, ...)
	end