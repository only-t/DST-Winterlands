local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local Brushable = require("components/brushable")
	
	local OldBrush = Brushable.Brush
	function Brushable:Brush(doer, brush, ...)
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
		
		return OldBrush(self, doer, brush, ...)
	end