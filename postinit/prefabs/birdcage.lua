local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local CAGE_STATES = {
    DEAD = "_death",
    SKELETON = "_skeleton",
    EMPTY = "_empty",
    FULL = "_bird",
    SICK = "_sick",
}

ENV.AddPrefabPostInit("birdcage", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    MakeTinyFreezableCharacter(inst, "crow_body")

    -- :pensive:
    -- local old_PlayAnimation = inst.AnimState.PlayAnimation
    -- inst.AnimState.PlayAnimation = function(self, animname, ...)
    --     if inst.components.freezable:IsFrozen() and animname ~= "frozen" and animname ~= "frozen_loop_pst" then
    --         return
    --     end

    --     old_PlayAnimation(self, animname, ...)
    -- end

    -- local old_PushAnimation = inst.AnimState.PushAnimation
    -- inst.AnimState.PushAnimation = function(self, animname, ...)
    --     if inst.components.freezable:IsFrozen() then
    --         return
    --     end

    --     old_PushAnimation(self, animname, ...)
    -- end

    local old_Freeze = inst.components.freezable.Freeze
    inst.components.freezable.Freeze = function(self, ...)
        if inst.CAGE_STATE == CAGE_STATES.EMPTY then
            return
        end

        inst.AnimState:SetBank("birdcage_frozen")
        inst.AnimState:SetBuild("bird_cage_frozen")

        inst.AnimState:AddOverrideBuild(inst.bird_type.."_build")

        old_Freeze(self, ...)
    end

    local old_UpdateTint = inst.components.freezable.UpdateTint
    inst.components.freezable.UpdateTint = function(self, ...)
        -- old_UpdateTint(self, ...) -- Don't tint
    end

    inst:ListenForEvent("unfreeze", function(inst)
        inst.AnimState:SetBank("birdcage")
        inst.AnimState:SetBuild("bird_cage")

        inst.AnimState:AddOverrideBuild(inst.bird_type.."_build")
    end)
end)