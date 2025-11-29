local assets = {
    Asset("ANIM", "anim/ds_spider_basic.zip"),
    Asset("ANIM", "anim/spider_build.zip")
}

local prefabs = {
    "groundpound_fx",
    "groundpoundring_fx",
    "nightmarefuel",
    "ice",
    "bluegem_overcharged",
    "frosty_snowball"
}

local function PickSpecialAttackTargetInRange(inst, range)
    local target
    local far_distsq = 0
    for player, _ in pairs(inst.player_targets) do
        if player:IsValid() and
        not player.components.health:IsDead() and
        not player:HasTag("playerghost") and
        not player:HasTag("pinned") then
            local distsq_to_player = inst:GetDistanceSqToInst(player)
            if distsq_to_player <= range * range then
                if distsq_to_player > far_distsq then
                    far_distsq = distsq_to_player
                    target = player
                end
            end
        end
    end

    return target ~= nil and target or inst.components.combat.target
end

local BODY_SLAM_TARGET_TIMEOUT = 5
local function RetargetBodySlam(inst)
    if inst.body_slam_active and
    (inst.body_slam_target == nil or inst.body_slam_target.components.health:IsDead()) or
    (inst.body_slam_target ~= nil and (inst.body_slam_start == nil or inst.body_slam_start + BODY_SLAM_TARGET_TIMEOUT <= GetTime())) then
        local target = PickSpecialAttackTargetInRange(inst, TUNING.FROSTY.SIMPLE.BODY_SLAM_TARGET_RANGE)
        
        if target == nil then
            inst.body_slam_active = false
            inst.body_slam_target = nil
            inst.body_slam_start = nil
            return
        end

        inst.body_slam_target = target
        inst.body_slam_start = GetTime()

        inst:DoTaskInTime(0.5, RetargetBodySlam)
    end
end

local RETARGET_MUST_TAGS = { "_combat" }
local RETARGET_CANT_TAGS = { "prey", "smallcreature", "INLIMBO" }
local function RetargetFn(inst)
    return FindEntity(inst, TUNING.FROSTY.SIMPLE.TARGETING_DIST, function(guy)
        return inst.components.combat:CanTarget(guy) and guy.prefab ~= "pumpkin_lantern"
    end,
    RETARGET_MUST_TAGS,
    RETARGET_CANT_TAGS)
end

local function KeepTargetFn(inst, target)
    return inst.components.combat:CanTarget(target)
end

local function CalcSanityAura(inst)
    return inst.components.combat.target and -TUNING.SANITYAURA_HUGE or -TUNING.SANITYAURA_LARGE
end

local function ForgetPlayerTargets(inst)
    for _, task in pairs(inst.player_targets) do
        task:Cancel()
    end

    inst.player_targets = {  }
end

local function OnDeath(inst)
    ForgetPlayerTargets(inst)
    
    inst.body_slam_active = false
    inst.body_slam_target = nil
    inst.body_slam_start = nil

    if inst.components.timer:TimerExists("ranged_cd") then
        inst.components.timer:StopTimer("ranged_cd")
    end

    if inst.components.timer:TimerExists("body_slam_cd") then
        inst.components.timer:StopTimer("body_slam_cd")
    end
end

local function RememberPlayerTarget(inst, target)
    if inst.player_targets[target] ~= nil then
        inst.player_targets[target]:Cancel()
        inst.player_targets[target] = nil
    end

    inst.player_targets[target] = inst:DoTaskInTime(TUNING.FROSTY.SIMPLE.TARGET_REMEMBER_TIME, function()
        if inst.player_targets[target] == inst.components.combat.target then
            RememberPlayerTarget(inst, inst.player_targets[target])

            return
        end

        inst.player_targets[target] = nil
    end)
end

local function OnAttacked(inst, data)
    if data and data.attacker then
        inst.components.combat:SetTarget(data.attacker)

        if data.attacker:HasTag("player") then
            RememberPlayerTarget(inst, data.attacker)
        end
    end
end

local function OnNewCombatTarget(inst, data)
    if data and data.target ~= nil then
        if not inst.components.timer:TimerExists("ranged_cd") then
            inst.components.timer:StartTimer("ranged_cd", TUNING.FROSTY.SIMPLE.RANGED_COOLDOWN)
        else
            inst.components.timer:ResumeTimer("ranged_cd")
        end

        if not inst.components.timer:TimerExists("body_slam_cd") then
            inst.components.timer:StartTimer("body_slam_cd", TUNING.FROSTY.SIMPLE.BODY_SLAM_COOLDOWN)
        else
            inst.components.timer:ResumeTimer("body_slam_cd")
        end

        if data.target:HasTag("player") then
            RememberPlayerTarget(inst, data.target)
        elseif data.target.components.follower and
        data.target.components.follower.leader ~= nil and
        data.target.components.follower.leader:HasTag("player") then
            RememberPlayerTarget(inst, data.target.components.follower.leader)
        end
    end
end

local function OnHitOther(inst, data)
    local target = data.target
    if target then
        if not (target.components.health ~= nil and target.components.health:IsDead()) then
            if target.components.freezable then
				target.components.freezable:AddColdness(TUNING.FROSTY.SIMPLE.MELEE_FREEZE_POWER)
            end

            if target.components.temperature then
                local mintemp = math.max(target.components.temperature.mintemp, 0)
                local curtemp = target.components.temperature:GetCurrent()
                if mintemp < curtemp then
                    target.components.temperature:DoDelta(math.max(-5, mintemp - curtemp))
                end
            end
        end

        if target.components.freezable then
            target.components.freezable:SpawnShatterFX()
        end
    end
end

local function ThrowSnowball(inst)
    local target = PickSpecialAttackTargetInRange(inst, TUNING.FROSTY.SIMPLE.RANGED_RANGE)
    if target and target:IsValid() then
        local snowball = SpawnPrefab("frosty_snowball")
        snowball.owner = inst
        snowball.Transform:SetPosition(inst.Transform:GetWorldPosition())

        local distsq = inst:GetDistanceSqToInst(target)
        if distsq <= 6 * 6 then
            snowball.components.complexprojectile:SetHorizontalSpeed(TUNING.FROSTY_SNOWBALL_SPEED_NEAR)
            snowball.components.complexprojectile:SetGravity(TUNING.FROSTY_SNOWBALL_GRAVITY_NEAR)
        elseif distsq <= 12 * 12 then
            snowball.components.complexprojectile:SetHorizontalSpeed(TUNING.FROSTY_SNOWBALL_SPEED_FAR)
            snowball.components.complexprojectile:SetGravity(TUNING.FROSTY_SNOWBALL_GRAVITY_FAR)
        else
            snowball.components.complexprojectile:SetHorizontalSpeed(TUNING.FROSTY_SNOWBALL_SPEED_VERYFAR)
            snowball.components.complexprojectile:SetGravity(TUNING.FROSTY_SNOWBALL_GRAVITY_VERYFAR)
        end

        snowball.components.complexprojectile:Launch(target:GetPosition(), inst)
    end

    if inst.components.timer:TimerExists("body_slam_cd") then
        inst.components.timer:ResumeTimer("body_slam_cd")
    end

    inst.components.timer:StartTimer("ranged_cd", TUNING.FROSTY.SIMPLE.RANGED_COOLDOWN)
end

local function DoRangedAttack(inst)
    if inst.components.combat.target then -- Has to be in combat
        if inst.components.timer:TimerExists("body_slam_cd") then
            inst.components.timer:PauseTimer("body_slam_cd")
        end

        inst:PushEvent("dorangedattack")
    end
end

local function StartBodySlamAttack(inst)
    if inst.components.combat.target then
        if inst.components.timer:TimerExists("ranged_cd") then
            inst.components.timer:PauseTimer("ranged_cd")
        end

        inst.sg:GoToState("taunt")

        inst.components.locomotor.walkspeed = TUNING.FROSTY.SIMPLE.BODY_SLAM_RUN_SPEED

        inst.body_slam_active = true
        inst.body_slam_start = GetTime()
        RetargetBodySlam(inst)
    end
end

local function DoBodySlamJump(inst)
    if inst.body_slam_target ~= nil and inst.body_slam_target:IsValid() then
        inst:ForceFacePoint(inst.body_slam_target.Transform:GetWorldPosition())
    end

    inst:PushEvent("dobodyslam")

    inst.body_slam_active = false
    inst.body_slam_target = nil
    inst.body_slam_start = nil
end

local function OnSnowBuriedAttacked(inst)
    inst.components.pinnable:Unstick()
end

local function OnSnowBuriedUnpin(inst)
    if inst ~= nil and inst:IsValid() then
        inst:RemoveEventCallback("attacked", OnSnowBuriedAttacked)
        inst:RemoveEventCallback("onunpin", OnSnowBuriedUnpin)
    end
end

local function DoBodySlamLanding(inst)
    local x, y, z = inst.Transform:GetWorldPosition()

    SpawnPrefab("groundpound_fx").Transform:SetPosition(x, y, z)
    SpawnPrefab("groundpoundring_fx").Transform:SetPosition(x, y, z)
    SpawnPrefab("splash_snow_fx").Transform:SetPosition(x, y, z)
    inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/groundpound")

    local player_hit = false
    local ents = TheSim:FindEntities(x, y, z, TUNING.FROSTY.SIMPLE.BODY_SLAM_HIT_RANGE, { "_combat" })
    for i, ent in ipairs(ents) do
        if ent ~= inst then
            local damage = TUNING.FROSTY.SIMPLE.BODY_SLAM_DAMAGE
            if ent:HasTag("player") then
                player_hit = ent
                damage = damage * TUNING.FROSTY.SIMPLE.BODY_SLAM_PLAYER_DMG_PERCENT
            end

            ent.components.combat:GetAttacked(inst, damage)

            if ent.components.pinnable then
                ent.components.pinnable:Stick()
                ent:ListenForEvent("attacked", OnSnowBuriedAttacked)
                ent:ListenForEvent("onunpin", OnSnowBuriedUnpin)
            else
                if ent.components.freezable then
                    ent.components.freezable:AddColdness(TUNING.FROSTY.SIMPLE.BODY_SLAM_FREEZE_POWER)
                    ent.components.freezable:SpawnShatterFX()
                end
                
                if ent.components.temperature then
                    local mintemp = math.max(ent.components.temperature.mintemp, 0)
                    local curtemp = ent.components.temperature:GetCurrent()
                    if mintemp < curtemp then
                        ent.components.temperature:DoDelta(math.max(-5, mintemp - curtemp))
                    end
                end
            end
        end
    end

    if player_hit then
        inst:PushEvent("player_snowed", player_hit)
    end

    inst.components.locomotor.walkspeed = TUNING.FROSTY.SIMPLE.WALK_SPEED

    if inst.components.timer:TimerExists("ranged_cd") then
        inst.components.timer:ResumeTimer("ranged_cd")
    end

    inst.components.timer:StartTimer("body_slam_cd", TUNING.FROSTY.SIMPLE.BODY_SLAM_COOLDOWN)
end

local function OnDroppedTarget(inst, data)
    if inst.components.timer:TimerExists("ranged_cd") then
        inst.components.timer:PauseTimer("ranged_cd")
    end

    if inst.components.timer:TimerExists("body_slam_cd") then
        inst.components.timer:PauseTimer("body_slam_cd")
    end
end

local function OnTimerDone(inst, data)
    if data then
        if data.name == "ranged_cd" then
            if inst.sg:HasStateTag("attack") then
                inst.buffer_rangedattack = true
            else
                DoRangedAttack(inst)
            end
        elseif data.name == "body_slam_cd" then
            if inst.sg:HasStateTag("attack") then
                inst.buffer_bodyslamattack = true
            else
                StartBodySlamAttack(inst)
            end
        end
    end
end

local function OnPlayerSnowed(inst, player)
    inst:ForceFacePoint(player.Transform:GetWorldPosition())

    if inst.components.timer:TimerExists("ranged_cd") then
        inst.components.timer:PauseTimer("ranged_cd")
    end

    if inst.components.timer:TimerExists("body_slam_cd") then
        inst.components.timer:PauseTimer("body_slam_cd")
    end
end

local function FinishLaughing(inst)
    if inst.components.timer:TimerExists("ranged_cd") then
        inst.components.timer:ResumeTimer("ranged_cd")
    end

    if inst.components.timer:TimerExists("body_slam_cd") then
        inst.components.timer:ResumeTimer("body_slam_cd")
    end
end

local brain = require "brains/frosty_simplebrain"

local loottable = {
    "nightmarefuel",
    "ice",
    "ice",
    "ice",
    "ice",
    "ice",
    "ice",
    "ice",
    "ice",
    "bluegem_overcharged",
    "bluegem_overcharged"
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddDynamicShadow()
    inst.entity:AddNetwork()

    MakeGiantCharacterPhysics(inst, 1000, 1.6)

    inst.DynamicShadow:SetSize(5, 3)
    inst.Transform:SetFourFaced()

    inst:AddTag("monster")
    inst:AddTag("hostile")
    inst:AddTag("scarytoprey")
    inst:AddTag("epic")
    inst:AddTag("largecreature")
    inst:AddTag("abominable_snowman")

    inst.AnimState:SetBank("spider")
    inst.AnimState:SetBuild("spider_build")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("locomotor")
    inst.components.locomotor.pathcaps = { ignorecreep = true }
    inst.components.locomotor.walkspeed = TUNING.FROSTY.SIMPLE.WALK_SPEED

    inst:AddComponent("lootdropper")
    inst.components.lootdropper:SetLoot(loottable)

    inst:AddComponent("health")
    inst.components.health:SetMaxHealth(TUNING.FROSTY.SIMPLE.HEALTH)

    inst:AddComponent("combat")
    inst.components.combat:SetDefaultDamage(TUNING.FROSTY.SIMPLE.MELEE_DAMAGE)
    inst.components.combat:SetAreaDamage(TUNING.FROSTY.SIMPLE.MELEE_SPLASH_RANGE, TUNING.FROSTY.SIMPLE.MELEE_SPLASH_DMG_PERCENT)
    inst.components.combat:SetAttackPeriod(TUNING.FROSTY.SIMPLE.MELEE_COOLDOWN)
    inst.components.combat:SetRange(TUNING.FROSTY.SIMPLE.MELEE_RANGE, TUNING.FROSTY.SIMPLE.MELEE_RANGE + 0.5)
    inst.components.combat:SetRetargetFunction(0.5, RetargetFn)
    inst.components.combat:SetKeepTargetFunction(KeepTargetFn)
    inst.components.combat.hiteffectsymbol = "body"
    inst.components.combat.playerdamagepercent = TUNING.FROSTY.SIMPLE.MELEE_PLAYER_DMG_PERCENT

    inst:AddComponent("frozenarmor")
    inst.components.frozenarmor:InitProtection(TUNING.FROSTY.SIMPLE.FROZEN_ARMOR_PROTECTION, TUNING.FROSTY.SIMPLE.FROZEN_ARMOR_DURABILITY)
    inst.components.frozenarmor:SetRegenTime(TUNING.FROSTY.SIMPLE.FROZEN_ARMOR_REGEN_TIME)

    inst:AddComponent("timer")

    inst:AddComponent("inspectable")

    inst:AddComponent("sanityaura")
    inst.components.sanityaura.aurafn = CalcSanityAura

    inst:ListenForEvent("attacked", OnAttacked)
    inst:ListenForEvent("onhitother", OnHitOther)
    inst:ListenForEvent("death", OnDeath)
    inst:ListenForEvent("newcombattarget", OnNewCombatTarget)
    inst:ListenForEvent("droppedtarget", OnDroppedTarget)
    inst:ListenForEvent("timerdone", OnTimerDone)
    inst:ListenForEvent("player_snowed", OnPlayerSnowed)

    inst.player_targets = {  }
    inst.body_slam_active = false
    inst.body_slam_target = nil
    inst.body_slam_start = nil

    inst.DoRangedAttack = DoRangedAttack
    inst.StartBodySlamAttack = StartBodySlamAttack
    inst.DoBodySlamJump = DoBodySlamJump
    inst.DoBodySlamLanding = DoBodySlamLanding
    inst.ThrowSnowball = ThrowSnowball
    inst.FinishLaughing = FinishLaughing

    inst:SetStateGraph("SGfrosty_simple")

    inst:SetBrain(brain)

    return inst
end

return Prefab("frosty_simple", fn, assets, prefabs)