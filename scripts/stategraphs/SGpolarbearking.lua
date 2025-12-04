local events = {
    EventHandler("stopinfighting", function(inst)
		if not inst.sg:HasStateTag("sleeping") then
			inst.sg:GoToState("yell")
		end
    end)
}

local states = {
    State{
        name = "idle",
        tags = { "idle" },

        onenter = function(inst)
            if inst.sg.mem.sleeping then
                inst.sg:GoToState("sleep")
            else
                inst.AnimState:PlayAnimation("idle", true)
            end
        end
    },
 
    State{
        name = "sleep",
        tags = { "sleeping" },

        onenter = function(inst)
            inst.AnimState:PlayAnimation("sleep_pre")
            inst.AnimState:PushAnimation("sleep_loop", true)
        end
    },

    State{
        name = "wake",

        onenter = function(inst)
            inst.AnimState:PlayAnimation("sleep_pst")
        end,

        events = {
            EventHandler("animover", function(inst)
                if inst.AnimState:AnimDone() then
                    inst.sg:GoToState("idle")
                end
            end)
        }
    },

    State{
        name = "yell", -- This state for stopping bear infighting
        tags = { "yelling" },

        onenter = function(inst)
            inst.AnimState:PlayAnimation("unimpressed")
            inst.SoundEmitter:PlaySound("dontstarve/pig/PigKingReject")
        end,

        timeline = {
            TimeEvent(30*FRAMES, function(inst)
                inst:StopBearInfighting()
            end)
        },

        events = {
            EventHandler("animover", function(inst)
                if inst.AnimState:AnimDone() then
                    inst.sg:GoToState("idle")
                end
            end)
        }
    }
}

return StateGraph("polarbearking", states, events, "idle")
