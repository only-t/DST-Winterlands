local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local Health = require("components/health")
	
	local OldDoDelta = Health.DoDelta
	function Health:DoDelta(delta, ...)
		if self.inst:HasTag("frozenstats") then
			WandaTimeFreezeDrain(self.inst, "health", delta, self.currenthealth, self.maxhealth, self.minhealth)
			return
		end
		
		return OldDoDelta(self, delta, ...)
	end
	
	--[[local OldIsInvincible = Health.IsInvincible
	function Health:IsInvincible(...)
		if self.inst:HasTag("frozenstats") then
			return true
		end
		
		return OldIsInvincible(self, ...)
	end]]