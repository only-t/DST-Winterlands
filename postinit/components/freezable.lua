local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local Freezable = require("components/freezable")
	
	local OldAddColdness = Freezable.AddColdness
	function Freezable:AddColdness(coldness, freezetime, nofreeze, ...)
		if self.inst:HasTag("frozenstats") then
			return
		end
		
		return OldAddColdness(self, coldness, freezetime, nofreeze, ...)
	end
	
	local OldFreeze = Freezable.Freeze
	function Freezable:Freeze(freezetime, ...)
		if self.inst:HasTag("frozenstats") then
			return
		end
		
		return OldFreeze(self, freezetime, ...)
	end
	
	local OldResolveResistance = Freezable.ResolveResistance
	function Freezable:ResolveResistance(...)
		local resistance = OldResolveResistance(self, ...)
		local temperature = self.inst.components.temperature
		
		if not temperature then
			return resistance
		end
		
		--	Resistance gets increased by total insulation, 0.5 extra per 60
		local winterInsulation, summerInsulation = temperature and temperature:GetInsulation()
		
		local insulation_bonus = math.min(TUNING.FREEZABLE_INSULATION_MAX_RESISTANCE,
			(winterInsulation / TUNING.FREEZABLE_INSULATION_STEP)) * TUNING.FREEZABLE_INSULATION_STEP_AMOUNT
		
		local resistance_with_insulation = resistance + insulation_bonus
		
		--	Hot foods now provide a short resistance mult (while cold food adds weakness)
		local bellytemperature = temperature.bellytemperaturedelta or 0
		
		local mult = 1 + (bellytemperature / TUNING.FREEZABLE_BELLY_MULT_RANGE)
		local max_mult = TUNING.FREEZABLE_BELLY_MULT_MAX
		local min_mult = TUNING.FREEZABLE_BELLY_MULT_MIN
		
		mult = mult > max_mult and max_mult or (mult < min_mult and min_mult or mult)
		
		return resistance_with_insulation * mult
	end