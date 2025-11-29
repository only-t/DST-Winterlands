local function DoRegen(self)
    self.current_durability = self.max_durability
    self.regen_task = nil
end

local FrozenArmor = Class(function(self, inst)
	self.inst = inst
	
    self.protection = 0.2
    self.current_durability = 500
    self.max_durability = 500
    self.regen_time = 60

    self.regen_task = nil
end)

function FrozenArmor:OnSave()
    return {
        durabilty_left = self.current_durability,
        regen_time_left = self.regen_task ~= nil and GetTaskRemaining(self.regen_task) or nil
    }
end

function FrozenArmor:OnLoad(data)
    if data then
        if data.regen_time_left then
            self.current_durability = 0
            self:StartRegenerating(data.regen_time_left)
        elseif data.durabilty_left then
            self.current_durability = data.durabilty_left
        end
    end
end

function FrozenArmor:InitProtection(protection, durability)
    self.protection = protection
    self.max_durability = durability
    self.current_durability = durability
end

function FrozenArmor:SetRegenTime(regen_time)
    self.regen_time = regen_time
end

function FrozenArmor:StartRegenerating(time_left)
    if self.regen_task ~= nil then
        self.regen_task:Cancel()
        self.regen_task = nil
    end

    self.regen_task = self.inst:DoTaskInTime(time_left or self.regen_time, function() DoRegen(self) end)
end

function FrozenArmor:ApplyFrozenArmor(attacker, damage, weapon)
    if (weapon ~= nil and weapon:HasTag("fiery")) or self.current_durability <= 0 then
        if self.current_durability > 0 then
            self.current_durability = self.current_durability - damage

            if self.current_durability <= 0 then
                self:StartRegenerating()
            end
        end

        return damage
    end

    return damage * (1 - self.protection)
end

return FrozenArmor