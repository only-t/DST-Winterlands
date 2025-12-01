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
	
	local OldRecalc = Sanity.Recalc
	function Sanity:Recalc(dt, ...)
		local fleas = self.inst.components.inventory and self.inst.components.inventory:GetItemsWithTag("flea") or {}
		local hostedamt = 0
		
		for i, v in ipairs(fleas) do
			if v.components.inventoryitem and v.components.inventoryitem.owner == self.inst then -- Only in inv, ignore fleas in backpack
				hostedamt = hostedamt + 1
			end
		end
		
		if hostedamt > 0 then
			self.externalmodifiers:SetModifier(self.inst, TUNING.POLARFLEA_INV_DAPPERNESS * hostedamt, "itchyfleas")
		else
			self.externalmodifiers:RemoveModifier(self.inst, "itchyfleas")
		end
		
		return OldRecalc(self, dt, ...)
	end