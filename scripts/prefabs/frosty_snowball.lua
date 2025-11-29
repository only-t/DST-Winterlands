local assets = {

}

local function OnSnowBuriedAttacked(inst)
    inst.components.pinnable:Unstick()
end

local function OnSnowBuriedUnpin(inst)
    if inst ~= nil and inst:IsValid() then
        inst:RemoveEventCallback("attacked", OnSnowBuriedAttacked)
        inst:RemoveEventCallback("onunpin", OnSnowBuriedUnpin)
    end
end

local TARGET_EXCLUDE_TAGS = { "INLIMBO", "notarget", "noattack", "flight", "invisible", "playerghost" }
local function OnHit(inst)
    local x, y, z = inst.Transform:GetWorldPosition()
    local ents = TheSim:FindEntities(x, y, z, TUNING.FROSTY.SIMPLE.RANGED_SPLASH_RANGE, nil, TARGET_EXCLUDE_TAGS)

    for i, ent in ipairs(ents) do
        if ent ~= inst.owner and
        ent:IsValid() and
        ent.components.combat and
        ent.components.health and not ent.components.health:IsDead() then
            ent.components.combat:GetAttacked(inst, TUNING.FROSTY.SIMPLE.RANGED_DAMAGE)

            if ent.components.pinnable then -- Pinnable entities don't get frozen but will be buried in snow instead
                ent.components.pinnable:Stick()
                ent:ListenForEvent("attacked", OnSnowBuriedAttacked)
                ent:ListenForEvent("onunpin", OnSnowBuriedUnpin)
            else
                if ent.components.freezable then
                    ent.components.freezable:AddColdness(TUNING.FROSTY_SNOWBALL_FREEZE_POWER)
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

    SpawnPrefab("splash_snow_fx").Transform:SetPosition(x, y, z)

    inst:Remove()
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

	inst.Transform:SetTwoFaced()

    inst.entity:AddPhysics()
    inst.Physics:SetMass(1)
    inst.Physics:SetFriction(0)
    inst.Physics:SetDamping(0)
    inst.Physics:SetCollisionGroup(COLLISION.CHARACTERS)
	inst.Physics:SetCollisionMask(
		COLLISION.GROUND,
		COLLISION.OBSTACLES,
		COLLISION.ITEMS
	)
    inst.Physics:SetCapsule(0.2, 0.2)
    inst.Physics:SetCollides(false)

    if not TheNet:IsDedicated() then
        inst:DoTaskInTime(0, function(inst)
            inst:AddComponent("groundshadowhandler")
            local x, y, z = inst.Transform:GetWorldPosition()
            inst.components.groundshadowhandler.ground_shadow.Transform:SetPosition(x, 0, z)
            inst.components.groundshadowhandler:SetSize(1, 0.5)
        end)
    end

    inst.persists = false

    inst:AddTag("projectile")
	inst:AddTag("complexprojectile")
	inst:AddTag("NOCLICK")

    inst.AnimState:SetBank("cannonball_rock")
    inst.AnimState:SetBuild("cannonball_rock")
    inst.AnimState:PlayAnimation("spin_loop", true)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("complexprojectile")
    inst.components.complexprojectile:SetHorizontalSpeed(TUNING.FROSTY_SNOWBALL_SPEED)
    inst.components.complexprojectile:SetGravity(TUNING.FROSTY_SNOWBALL_GRAVITY)
    inst.components.complexprojectile:SetLaunchOffset(Vector3(0, 4, 0))
    inst.components.complexprojectile:SetOnHit(OnHit)
    inst.components.complexprojectile:SetTargetOffset(Vector3(0, 1, 0))

    return inst
end

return Prefab("frosty_snowball", fn, assets)