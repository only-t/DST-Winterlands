local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local Shaveable = require("components/shaveable")
	
	local OldShave = Shaveable.Shave
	function Shaveable:Shave(shaver, shaving_implement, ...)
		if self.inst._snowfleas then
			for i, v in ipairs(self.inst._snowfleas) do
				if v.SetHost then
					v:SetHost(nil, true)
				end
			end
		end
		
		local inventory = self.inst.components.inventory or self.inst.components.container
		if inventory then
			inventory:ForEachItem(function(item)
				if item:HasTag("flea") and item.SetHost then
					item:SetHost(nil, true)
				end
			end)
		end
		
		return OldShave(self, shaver, shaving_implement, ...)
	end
	
local Beard = require("components/beard")
	
	local Beard_OldShave = Beard.Shave
	function Beard:Shave(who, withwhat, ...)
		if self.inst._snowfleas then
			for i, v in ipairs(self.inst._snowfleas) do
				if v.SetHost then
					v:SetHost(nil, true)
				end
			end
		end
		
		local inventory = self.inst.components.inventory or self.inst.components.container
		if inventory then
			inventory:ForEachItem(function(item)
				if item:HasTag("flea") and item.SetHost then
					item:SetHost(nil, true)
				end
			end)
		end
		
		return Beard_OldShave(self, who, withwhat, ...)
	end