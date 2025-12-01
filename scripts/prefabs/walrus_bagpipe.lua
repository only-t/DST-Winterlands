local assets = {
	Asset("ANIM", "anim/armor_walrus_bagpipe.zip"),
}

local banddt = 1
local FOLLOWER_ONEOF_TAGS = {"walrus", "hound", "farm_plant"}
local FOLLOWER_CANT_TAGS = {"player"}

local function band_update(inst)
	local owner = inst.components.inventoryitem and inst.components.inventoryitem.owner
	
	if owner and owner.components.leader then
		local x, y, z = owner.Transform:GetWorldPosition()
		local ents = TheSim:FindEntities(x, y, z, TUNING.ONEMANBAND_RANGE, nil, FOLLOWER_CANT_TAGS, FOLLOWER_ONEOF_TAGS)
		
		for k, v in pairs(ents) do
			if v.components.follower and not v.components.follower.leader and not owner.components.leader:IsFollower(v) then
				--owner.components.leader:AddFollower(v)
			elseif v.components.farmplanttendable then
				v.components.farmplanttendable:TendTo(owner)
			end
		end
		
		for _, v in ipairs(AllPlayers) do
			if not v:HasTag("playerghost") and v:GetDistanceSqToPoint(x, y, z) < TUNING.ONEMANBAND_RANGE * TUNING.ONEMANBAND_RANGE then
				v:AddDebuff("buff_walrusally", "buff_walrusally")
			end
		end
		
		--[[for k, v in pairs(owner.components.leader.followers) do
			if k.components.follower then
				if k:HasTag("walrus") then
					k.components.follower:AddLoyaltyTime(3)
				end
			end
		end
	else
		local x, y, z = inst.Transform:GetWorldPosition()
		local ents = TheSim:FindEntities(x, y, z, TUNING.ONEMANBAND_RANGE, FOLLOWER_ONEOF_TAGS, FOLLOWER_CANT_TAGS)
		
		for k, v in pairs(ents) do
			if v.components.follower and not v.components.follower.leader and not inst.components.leader:IsFollower(v) then
				inst.components.leader:AddFollower(v)
			end
		end
		
		for k, v in pairs(inst.components.leader.followers) do
			if k:HasTag("walrus") and k.components.follower then
				k.components.follower:AddLoyaltyTime(3)
			end
		end]]
	end
end

local function OnEquip(inst, owner)
	inst.updatetask = inst:DoPeriodicTask(banddt, band_update, 0)
	
	owner.AnimState:OverrideSymbol("swap_body_tall", "armor_walrus_bagpipe", "torso")
	owner:DoTaskInTime(0.2 + math.random() * 0.5, function()
		if owner.SoundEmitter and inst.updatetask then
			owner.SoundEmitter:PlaySound("polarsounds/walrus/bagpipes", "walrus_bagpipe")
		end
	end)
	
	if inst.components.fueled then
		inst.components.fueled:StartConsuming()
	end
end

local function OnUnequip(inst, owner)
	owner.AnimState:ClearOverrideSymbol("swap_body_tall")
	if owner.SoundEmitter then
		owner.SoundEmitter:KillSound("walrus_bagpipe")
	end
	
	if inst.components.fueled then
		inst.components.fueled:StopConsuming()
	end
	
	if inst.updatetask then
		inst.updatetask:Cancel()
		inst.updatetask = nil
	end
end

local function OnEquipToModel(inst, owner)
	if owner.SoundEmitter then
		owner.SoundEmitter:KillSound("walrus_bagpipe")
	end
	
	if inst.components.fueled then
		inst.components.fueled:StopConsuming()
	end
	
	if inst.updatetask then
		inst.updatetask:Cancel()
		inst.updatetask = nil
	end
end

local function OnPerish(inst)
	if inst.updatetask then
		inst.updatetask:Cancel()
		inst.updatetask = nil
	end
	
	inst:Remove()
end

local function fn()
	local inst = CreateEntity()
	
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
	
	MakeInventoryPhysics(inst)
	
	inst:AddTag("band") -- Helps us enter basic onemanband states if no other idle exits take the take before, then we swap over bagpipe states
	inst:AddTag("walrusbagpipe")
	
	inst.AnimState:SetBank("walrus_bagpipe")
	inst.AnimState:SetBuild("armor_walrus_bagpipe")
	inst.AnimState:PlayAnimation("anim")
	
	inst.foleysound = "cloth"
	
	inst.entity:SetPristine()
	
	if not TheWorld.ismastersim then
		return inst
	end
	
	inst:AddComponent("equippable")
	inst.components.equippable.equipslot = EQUIPSLOTS.BODY
	inst.components.equippable.dapperness = TUNING.CRAZINESS_SMALL
	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable:SetOnEquipToModel(OnEquipToModel)
	
	inst:AddComponent("fueled")
	inst.components.fueled.fueltype = FUELTYPE.USAGE
	inst.components.fueled:InitializeFuelLevel(TUNING.WALRUS_BAGPIPE_PERISHTIME)
	inst.components.fueled:SetDepletedFn(OnPerish)
	
	inst:AddComponent("inspectable")
	
	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem:SetSinks(true)
	
	inst:AddComponent("leader")
	
	--TODO: Custom haunt reaction
	
	return inst
end

return Prefab("walrus_bagpipe", fn, assets)