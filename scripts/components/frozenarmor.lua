local ZERO_DISTANCE = 10

local function DoRegen(self)
    self.current_durability = self.max_durability
    self.regen_task = nil

    self.inst:StartUpdatingComponent(self)
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
            self.inst:StartUpdatingComponent(self)
        end
    end
end

function FrozenArmor:InitProtection(protection, durability)
    if durability <= 0 then
        return
    end

    self.protection = protection
    self.max_durability = durability
    self.current_durability = durability

    self.inst:StartUpdatingComponent(self)
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
        self:TakeDamage(damage)

        return damage
    end

    return damage * (1 - self.protection)
end

function FrozenArmor:TakeDamage(damage)
    if self.current_durability > 0 then
        self.current_durability = self.current_durability - damage

        if self.current_durability <= 0 then
            self.current_durability = 0
            self:StartRegenerating()

            self.inst:StopUpdatingComponent(self)
        end
    end
end

function FrozenArmor:OnUpdate(dt)
    local x, y, z = self.inst.Transform:GetWorldPosition()
    local heaters = TheSim:FindEntities(x, y, z, ZERO_DISTANCE, { "HASHEATER" })
    local heat = 0
    for _, heater in ipairs(heaters) do
        heat = heat + heater.components.heater:GetHeat(self.inst)

        if heat > TUNING.FROSTY.SIMPLE.FROZEN_ARMOR_MAX_HEAT then
            heat = TUNING.FROSTY.SIMPLE.FROZEN_ARMOR_MAX_HEAT
            break
        end
    end

    local damage = TUNING.FROSTY.SIMPLE.FROZEN_ARMOR_HEAT_MAX_DRAIN * math.pow(heat / TUNING.FROSTY.SIMPLE.FROZEN_ARMOR_MAX_HEAT, 0.33)
    self:TakeDamage(damage)
end

return FrozenArmor