require("stategraphs/commonstates")

local events = {
    EventHandler("attacked", function(inst)
        if not inst.components.health:IsDead() and not inst.sg:HasStateTag("busy") then
            inst.sg:GoToState("hit")
        end
    end),

    EventHandler("doattack", function(inst, data)
        if not inst.components.health:IsDead() and not inst.sg:HasStateTag("busy") then
            inst.sg:GoToState("attack", data.target)
        end
    end),

    EventHandler("dorangedattack", function(inst)
        if not inst.components.health:IsDead() then
            inst.sg:GoToState("snowball_throw")
        end
    end),

    EventHandler("dobodyslam", function(inst)
        if not inst.components.health:IsDead() then
            inst.sg:GoToState("bodyslam")
        end
    end),

    EventHandler("player_snowed", function(inst)
        if not inst.components.health:IsDead() then
            inst.sg:GoToState("laugh")
        end
    end),

    EventHandler("locomote", function(inst)
        if not inst.sg:HasStateTag("busy") then
            local is_moving = inst.sg:HasStateTag("moving")
            local wants_to_move = inst.components.locomotor:WantsToMoveForward()
            if wants_to_move and not is_moving then
                if inst.body_slam_active then
                    inst.sg:GoToState("run_pre")
                else
                    inst.sg:GoToState("walk_pre")
                end
            elseif not wants_to_move then
                -- if is_moving then
                --     inst.sg:GoToState("walk_pst")
                -- else
                    inst.sg:GoToState("idle")
                -- end
            end
        end
    end),

    EventHandler("death", function(inst) inst.sg:GoToState("death") end)
}

local states = {
    State{
        name = "death",
        tags = { "busy" },

        onenter = function(inst)
            inst.AnimState:PlayAnimation("death")
            inst.Physics:Stop()
            RemovePhysicsColliders(inst)
            inst.components.lootdropper:DropLoot(inst:GetPosition())
        end
    },

    State{
        name = "idle",
        tags = { "idle", "canrotate" },

        onenter = function(inst)
            inst.Physics:Stop()
            inst.AnimState:PlayAnimation("idle", true)
        end
    },

    State{
        name = "walk_pre",
        tags = { "moving", "canrotate" },

        onenter = function(inst)
            inst.components.locomotor:WalkForward()
            inst.AnimState:PlayAnimation("walk_pre")
        end,

        events = {
            EventHandler("animover", function(inst) inst.sg:GoToState("walk_loop") end)
        }
    },

    State{
        name = "walk_loop",
        tags = { "moving", "canrotate" },

        onenter = function(inst)
            inst.components.locomotor:WalkForward()
            inst.AnimState:PlayAnimation("walk_loop")
        end,

        timeline = {
            TimeEvent(0*FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/step_stomp") end),
            TimeEvent(12*FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/step_stomp") end)
        },

        events = {
            EventHandler("animover", function(inst) inst.sg:GoToState("walk_loop") end)
        }
    },

    State{
        name = "run_pre",
        tags = { "moving", "canrotate" },

        onenter = function(inst)
            inst.components.locomotor:WalkForward()
            inst.AnimState:PlayAnimation("walk_pre")
        end,

        events = {
            EventHandler("animover", function(inst) inst.sg:GoToState("run_loop") end)
        }
    },

    State{
        name = "run_loop",
        tags = { "moving", "canrotate" },

        onenter = function(inst)
            inst.components.locomotor:WalkForward()
            inst.AnimState:PlayAnimation("walk_loop")
        end,

        timeline = {
            TimeEvent(0*FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/step_stomp") end),
            TimeEvent(6*FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/step_stomp") end),
            TimeEvent(12*FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/step_stomp") end)
        },

        events = {
            EventHandler("animover", function(inst) inst.sg:GoToState("run_loop") end)
        }
    },

    State{
        name = "taunt",
        tags = { "busy" },

        onenter = function(inst)
            inst.Physics:Stop()
            inst.AnimState:PlayAnimation("taunt")
            inst.SoundEmitter:PlaySound("dontstarve/creatures/spider/scream")
        end,

        events = {
            EventHandler("animover", function(inst) inst.sg:GoToState("idle") end)
        }
    },

    State{
        name = "laugh",
        tags = { "busy" },

        onenter = function(inst)
            inst.Physics:Stop()
            inst.AnimState:PlayAnimation("taunt", true)
        end,

        timeline = {
            TimeEvent(3*FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve/common/teleportato/teleportato_maxwelllaugh", nil, 0.3) end),
            TimeEvent(55*FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve/common/teleportato/teleportato_maxwelllaugh", nil, 0.3) end),
            TimeEvent(120*FRAMES, function(inst) inst.sg:GoToState("idle") end)
        },

        onexit = function(inst)
            inst:FinishLaughing()
        end
    },

    State{
        name = "attack",
        tags = { "attack", "busy", "canrotate" },

        onenter = function(inst, target)
            inst.Physics:Stop()
            inst.components.combat:StartAttack()
            inst.AnimState:PlayAnimation("atk")
            inst.sg.statemem.target = target
        end,

        timeline = {
            TimeEvent(10*FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve/creatures/spider/Attack") end),
            TimeEvent(10*FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve/creatures/spider/attack_grunt") end),
            TimeEvent(25*FRAMES, function(inst)
                local angle = inst:GetAngleToPoint(inst.sg.statemem.target.Transform:GetWorldPosition()) * DEGREES
                local slam_pos = inst:GetPosition() + Vector3(TUNING.FROSTY.SIMPLE.MELEE_RANGE * math.cos(angle), 0, -TUNING.FROSTY.SIMPLE.MELEE_RANGE * math.sin(angle))
                SpawnPrefab("splash_snow_fx").Transform:SetPosition(slam_pos:Get())
                inst.components.combat:DoAttack(inst.sg.statemem.target)
                inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/groundpound", nil, 0.7)
            end)
        },

        events = {
            EventHandler("animover", function(inst)
                if inst.buffer_rangedattack then
                    inst:DoRangedAttack()
                    inst.buffer_rangedattack = nil
                elseif inst.buffer_bodyslamattack then
                    inst:StartBodySlamAttack()
                    inst.buffer_bodyslamattack = nil
                else
                    inst.sg:GoToState("idle")
                end
            end)
        }
    },

    State{
        name = "snowball_throw",
        tags = { "attack", "busy" },

        onenter = function(inst)
            inst.Physics:Stop()
            inst.components.combat:StartAttack()
            inst.AnimState:PlayAnimation("eat", true)
        end,

        timeline = {
            TimeEvent(30*FRAMES, function(inst) inst:ThrowSnowball() end),
            TimeEvent(36*FRAMES, function(inst)
                if inst.buffer_bodyslamattack then
                    inst:StartBodySlamAttack()
                    inst.buffer_bodyslamattack = nil
                else
                    inst.sg:GoToState("idle")
                end
            end)
        }
    },

    State{
        name = "bodyslam",
        tags = { "attack", "busy" },

        onenter = function(inst)
            inst.Physics:Stop()
            inst.components.locomotor:EnableGroundSpeedMultiplier(false)

            inst.components.combat:StartAttack()

            inst.AnimState:PlayAnimation("warrior_atk", true)
        end,

        timeline = {
            TimeEvent(7*FRAMES, function(inst)
                inst.components.locomotor:WalkForward()
            end),
            TimeEvent(8*FRAMES, function(inst)
                RemovePhysicsColliders(inst)
                inst.Physics:SetMotorVelOverride(12,0,0)
            end),
            TimeEvent(30*FRAMES, function(inst)
                MakeGiantCharacterPhysics(inst, 1000, 1.6)
                inst:DoBodySlamLanding(inst)
            end),
            TimeEvent(36*FRAMES, function(inst)
                if inst.buffer_rangedattack then
                    inst:DoRangedAttack()
                    inst.buffer_rangedattack = nil
                else
                    inst.sg:GoToState("idle")
                end
            end)
        }
    },

    State{
        name = "hit",
        tags = { "busy" },

        onenter = function(inst)
            inst.AnimState:PlayAnimation("hit")
            inst.Physics:Stop()
        end,

        events = {
            EventHandler("animover", function(inst) inst.sg:GoToState("idle") end)
        }
    }
}

CommonStates.AddVoidFallStates(states)

return StateGraph("frosty_simple", states, events, "idle")