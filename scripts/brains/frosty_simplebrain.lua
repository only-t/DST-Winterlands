require("behaviours/chaseandattack")
require("behaviours/wander")
require("behaviours/follow")

local CHASE_DIST = 28
local CHASE_TIME = 10
local WANDER_DIST = 30

local function TryBodySlamming(inst)
    if inst.body_slam_target ~= nil and
    inst.body_slam_target.components.health and
    not inst.body_slam_target.components.health:IsDead() and
    inst:GetDistanceSqToInst(inst.body_slam_target) <= TUNING.FROSTY.SIMPLE.BODY_SLAM_JUMP_RANGE * TUNING.FROSTY.SIMPLE.BODY_SLAM_JUMP_RANGE and
    not inst.sg:HasStateTag("busy") then
        inst:DoBodySlamJump(inst)
        return true
    end

    return false
end

local function ShouldRush(inst)
    return inst.body_slam_active
end

local function GetBodySlamTarget(inst)
    return inst.body_slam_target
end

local FrostySimpleBrain = Class(Brain, function(self, inst)
    Brain._ctor(self, inst)
end)

function FrostySimpleBrain:OnStart()
    local root = PriorityNode({
        WhileNode(function() return ShouldRush(self.inst) end, "IsRushing",
            PriorityNode({
                ConditionNode(function() return TryBodySlamming(self.inst) end, "TryingBodySlamming"),
                Follow(self.inst, GetBodySlamTarget, 0, 0, TUNING.FROSTY.SIMPLE.BODY_SLAM_JUMP_RANGE)
            }, 0.25)
        ),
        WhileNode(function() return not ShouldRush(self.inst) end, "IsNotRushing",
            PriorityNode({
                ChaseAndAttack(self.inst, CHASE_TIME, CHASE_DIST),
                Wander(self.inst, nil, WANDER_DIST),
            }, 0.25)
        )
    }, 0.25)

    self.bt = BT(self.inst, root)
end

return FrostySimpleBrain