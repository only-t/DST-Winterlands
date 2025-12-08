--  [ Fist Fight ]
local FistFight_OnHealthDelta
local FistFight_OnBearAttacked
local function StartFistFightTrail(self)
    FistFight_OnHealthDelta = function(inst, data)
        if data.newpercent <= 0.1 then
            self:DisqualifyPlayer(inst)
        end
    end

    FistFight_OnBearAttacked = function(inst, data)
        if data.attacker then
            if self.trialdata.players_left[data.attacker] then
                if data.weapon ~= nil then -- Attacked with a weapon
                    self:DisqualifyPlayer(data.attacker)

                    return
                end
            elseif data.attacker:HasTag("player") then
                -- TODO label the attacker a cheater
                self:EndTrial("interruption")
            else
                self:EndTrial("interruption")
            end
        end

        if inst.components.health:GetPercent() <= 0.5 then
            self:EndTrial("win")
        end
    end

    local bear = FindEntity(self.inst, TRIALS_INGREDIANT_ACCESS_RADIUS + 4,
function(guy) return not guy.components.health:IsDead() end,
    { "bear" }, { "bear_major", "INLIMBO" })

    if bear == nil then
        return
    end

    self.trialdata.participants = { [bear] = true }
    bear:AddTag("trial_participator")

    bear.trialdata = self.trialdata

    if bear.components.timer:TimerExists("rageover") then -- Calm them down if they're enraged
        bear.components.timer:SetTimeLeft("rageover", 0)
    else
        bear:SetEnraged(false)
    end

    if bear.components.health then
        bear.components.health:SetPercent(1)
    end
    bear:ListenForEvent("attacked", FistFight_OnBearAttacked)
    bear.components.combat:DropTarget()
    bear.components.combat:TryRetarget()

    for player, _ in pairs(self.trialdata.player_participants) do
        player:ListenForEvent("healthdelta", FistFight_OnHealthDelta)
    end
end

local function EndFistFightTrail(self, reason)
    for player, _ in pairs(self.trialdata.player_participants) do
        player:RemoveEventCallback("healthdelta", FistFight_OnHealthDelta)
    end

    for participant, _ in pairs(self.trialdata.participants) do
        participant:RemoveEventCallback("attacked", FistFight_OnBearAttacked)
        participant:RemoveTag("trial_participator")
        participant.trialdata = nil
        participant.components.combat:DropTarget()
    end
end

local function WinFistFightTrial(self, player)
    TheNet:Announce("Player "..tostring(player).."won the trial!")
end

local function LoseFistFightTrial(self, player)
    TheNet:Announce("Player "..tostring(player).."lost the trial!")
end

--

--  [ Endurence Fight ]



--

local trials = {
    trial_fist_fight = {
        name = "trial_fist_fight",
        radius = 10,
        solo = true,
        combat_trial = true,
        audience_valid = true,
        canstarttrial = function() return TheWorld.state.isday end,
        start_fn = StartFistFightTrail,
        end_fn = EndFistFightTrail,
        win_fn = WinFistFightTrial,
        lose_fn = LoseFistFightTrial
    },
    -- trial_endurence_fight = {
    --     name = "trial_endurence_fight",
    -- },
    -- trial_all_out_rumble = { -- LET'S GET READY TO RRRRRRRRUMBLEEEEEEE
    --     name = "trial_all_out_rumble",
    --     radius = 16,
    --     combat_trial = true,
    --     audience_valid = true,
    --     canstarttrial = function() return TheWorld.state.isday end,
    --     -- start_fn = StartFistFightTrail,
    --     -- end_fn = EndFistFightTrail,
    --     -- win_fn = WinFistFightTrial,
    --     -- lose_fn = LoseFistFightTrial
    -- },
    -- trial_hide_and_hunt = {
    --     name = "trial_hide_and_hunt",
    --     radius = 60,
    --     fun_trial = true,
    --     -- start_fn = StartFistFightTrail,
    --     -- end_fn = EndFistFightTrail,
    --     -- win_fn = WinFistFightTrial,
    --     -- lose_fn = LoseFistFightTrial
    -- }
}

return trials