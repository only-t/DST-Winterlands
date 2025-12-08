local TrialsHolder = Class(function(self, inst)
	self.inst = inst

    self.trialdata = nil
    self.canstarttrial = nil
end)

function TrialsHolder:OnRemoveEntity()
    self:OnRemoveFromEntity()
end

function TrialsHolder:OnRemoveFromEntity()
    if self:IsTrialActive() then
        self:EndTrial()
    end
end

function TrialsHolder:OnSave()
    return {
        
    }
end

function TrialsHolder:OnLoad(data)
    if data then
        
    end
end

function TrialsHolder:SetTrialStartTestFn(fn)
    self.canstarttrial = fn
end

function TrialsHolder:StartTrial(trialdata, doer)
    if (self.canstarttrial ~= nil and not self.canstarttrial(self.inst, trialdata)) or
    (trialdata.canstarttrial ~= nil and not trialdata.canstarttrial()) then
        if self.onfailstarttrial ~= nil then
            self.onfailstarttrial(self.inst, trialdata)
        end

        self.inst:PushEvent("trialstartfailed")

        return
    end

    self.trialdata = trialdata
    self.trialdata.trial_starter = doer

    if trialdata.solo then
        self.trialdata.player_participants = { [self.trialdata.trial_starter] = true }
        self.trialdata.players_left = { [self.trialdata.trial_starter] = true }
        self.trialdata.trial_starter:AddTag("player_trial_participator")
    else
        self.trialdata.player_participants = {  }
        self.trialdata.players_left = {  }

        local x, y, z = self.inst.Transform:GetWorldPosition()
        local players = TheSim:FindEntities(x, y, z, TRIALS_INGREDIANT_ACCESS_RADIUS, { "player" }, { "playerghost" })
        for _, player in ipairs(players) do
            self.trialdata.player_participants[player] = true
            self.trialdata.players_left[player] = true
            player:AddTag("player_trial_participator")
        end
    end

    self.radius_fx = SpawnPrefab("trial_radius_fx")
    self.radius_fx.Transform:SetPosition(self.inst.Transform:GetWorldPosition())
    self.radius_fx.AnimState:SetScale(1.5 * self.trialdata.radius / (TILE_SCALE * 3), 1.5 * self.trialdata.radius / (TILE_SCALE * 3))

    if self.trialdata.start_fn ~= nil then
        self.trialdata.start_fn(self)
    end

    self.inst:PushEvent("trialstarted")

    self.inst:StartUpdatingComponent(self)

    return self.trialdata
end

function TrialsHolder:EndTrial(reason)
    if self.trialdata.end_fn ~= nil then
        self.trialdata.end_fn(self, reason)
    end

    if reason == "win" then
        self.inst:PushEvent("trial_end_won")

        for player, _ in pairs(self.trialdata.players_left) do
            player:PushEvent("won_trial")

            if self.trialdata.win_fn ~= nil then
                self.trialdata.win_fn(self, player)
            end
        end
    elseif reason == "lose" then
        self.inst:PushEvent("trial_end_lost")

        for player, _ in pairs(self.trialdata.players_left) do
            player:PushEvent("lost_trial")

            if self.trialdata.lose_fn ~= nil then
                self.trialdata.lose_fn(self, player)
            end
        end
    elseif reason == "interruption" then
        self.inst:PushEvent("trial_end_interrupted")
    end

    for player, _ in pairs(self.trialdata.players_left) do
        player:RemoveTag("player_trial_participator")
    end

    if self.radius_fx ~= nil then
        self.radius_fx:Remove()
    end

    self.inst:PushEvent("trailended")

    self.trialdata = nil

    self.inst:StopUpdatingComponent(self)
end

function TrialsHolder:DisqualifyPlayer(player)
    if self.trialdata.players_left[player] then
        self.trialdata.players_left[player] = nil
        player:RemoveTag("player_trial_participator")
    
        if self.trialdata.lose_fn ~= nil then
            self.trialdata.lose_fn(self, player)
        end
    end

    for player, _ in pairs(self.trialdata.players_left) do
        return
    end

    self:EndTrial("lose")
end

function TrialsHolder:IsTrialActive()
    return self.trialdata ~= nil
end

function TrialsHolder:OnUpdate(dt)
    for player, _ in pairs(self.trialdata.players_left) do
        if player:GetDistanceSqToPoint(self.inst:GetPosition()) > self.trialdata.radius * self.trialdata.radius then
            self:DisqualifyPlayer(player)
        end
    end
end

return TrialsHolder