local FIREFX_MULTS = TUNING.SNOW_BLOCK_RANGES.FIREFX_LEVEL_MULTS

local SnowwaveMelter = Class(function(self, inst)
	self.inst = inst
	
	self.melt_range = TUNING.SNOW_BLOCK_RANGES[self.inst.prefab == "character_fire" and "CREATURE" or "FIRE"] -- same as default _snowblockrange
	self.melt_rate = 0.25
	self.melt_time = TUNING.POLARPLOW_BLOCKER_DURATION_FIRE
	
	self.growth_time = 2
	self.melting = false
end)

function SnowwaveMelter:CanMelt()
	return (self.canmeltfn and self.canmeltfn(self.inst)) or not self.inst:HasTag("INLIMBO")
end

function SnowwaveMelter:GetMeltRange(skip_growth)
	local range = self.melt_range
	
	-- Gonna adjust melt_range based on burnable size, so items don't cover as much range as burning tree !
	if self.inst.components.firefx then
		local level = self.inst.components.firefx.level or 3
		
		range = range * ((level <= 1 and FIREFX_MULTS.LVL1)
			or (level <= 2 and FIREFX_MULTS.LVL2)
			or (level >= 4 and FIREFX_MULTS.LVL4)
			or FIREFX_MULTS.LVL3)
	end
	
	if not skip_growth then
		local growth = math.min(1, 0.5 + ((GetTime() - self.melt_start_time) / self.growth_time) * 0.5)
		
		 -- NOTE: Melting range should grows overtime for ents without _snowblockrange,
		 --	this is to prevent campfires to apply the extra firefx level they spawn with for a split second
		range = range * growth
	end
	
	return range
end

--local SNOWBLOCKER_TAGS = {"snowblocker"}
--local MIN_SNOWBLOCKER_DIST = 2

function SnowwaveMelter:Melt()
	if not self:CanMelt() then
		return
	end
	
	--[[local x, y, z = self.inst.Transform:GetWorldPosition()
	local blockers = TheSim:FindEntities(x, y, z, MIN_SNOWBLOCKER_DIST, SNOWBLOCKER_TAGS)
	
	local should_melt = true
	for i, v in ipairs(blockers) do
		if v.ExtendSnowBlocker then
			should_melt = false
			
			local range = v._snowblockrange and v._snowblockrange:value() or 0
			if v.SetSnowBlockRange and range < self.melt_range then			
				v:SetSnowBlockRange(range, self.inst)
			end
			v:ExtendSnowBlocker(self.inst)
		end
	end
	
	if should_melt then
		local blocker = SpawnPrefab("snowwave_blocker")
		blocker.Transform:SetPosition(x, y, z)
		
		blocker._gradual_time = self.melt_time
		blocker:ExtendSnowBlocker(self.inst, true, self.melt_time)
		if blocker.SetSnowBlockRange then
			blocker:SetSnowBlockRange(self.melt_range)
		end
		
		return blocker
	end]]
	
	return SpawnPolarSnowBlocker(self.inst:GetPosition(), self:GetMeltRange(), self.melt_time, self.inst) -- Generalised method, should do the same
end

function SnowwaveMelter:StartMelting()
	self.melting = true
	self.melt_start_time = GetTime()
	
	if self.melt_task == nil then
		self.melt_task = self.inst:DoPeriodicTask(self.melt_rate, function() self:Melt() end, 0)
	end
end

function SnowwaveMelter:StopMelting()
	if self.melt_task then
		self.melt_task:Cancel()
		self.melt_task = nil
	end
	
	self.melt_start_time = nil
	self.melting = false
end

return SnowwaveMelter