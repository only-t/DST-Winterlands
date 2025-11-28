local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local Debuffable = require("components/debuffable")
	
	local OldAddDebuff = Debuffable.AddDebuff
	function Debuffable:AddDebuff(name, prefab, data, buffer, ...)
		if self.inst:HasTag("frozenstats") and not (data and data.bypass_frozenstats) then
			return -- I fear this.
		end
		
		return OldAddDebuff(self, name, prefab, data, buffer, ...)
	end