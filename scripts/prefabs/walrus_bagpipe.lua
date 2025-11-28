local assets = {
	Asset("ANIM", "anim/armor_walrus_bagpipe.zip"),
}

local function band_disable(inst)
	if inst.updatetask then
		inst.updatetask:Cancel()
		inst.updatetask = nil
	end
end

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
		
		owner:AddDebuff("buff_walrusally", "buff_walrusally")
		
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

local function band_enable(inst)
	inst.updatetask = inst:DoPeriodicTask(banddt, band_update, 0)
end

local function band_perish(inst)
	band_disable(inst)
	inst:Remove()
end

local function OnEquip(inst, owner)
	if owner then
		owner.AnimState:OverrideSymbol("swap_body_tall", "armor_onemanband", "swap_body_tall")
		inst.components.fueled:StartConsuming()
	end
	
	band_enable(inst)
end

local function OnUnequip(inst, owner)
	if owner then
		owner.AnimState:ClearOverrideSymbol("swap_body_tall")
		inst.components.fueled:StopConsuming()
	end
	
	band_disable(inst)
end

local function OnEquipToModel(inst, owner)
	if owner then
		inst.components.fueled:StopConsuming()
	end
	
	band_disable(inst)
end

local function haunt_foley_delayed(inst)
	--inst.SoundEmitter:PlaySound(inst.foleysound)
end

local function OnHaunt(inst)
	OnEquip(inst)
	inst.hauntsfxtask = inst:DoPeriodicTask(.3, haunt_foley_delayed)
	return true
end

local function OnUnHaunt(inst)
	OnUnequip(inst)
	inst.hauntsfxtask:Cancel()
	inst.hauntsfxtask = nil
end

local function fn()
	local inst = CreateEntity()
	
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
	
	MakeInventoryPhysics(inst)
	
	inst:AddTag("walrusbagpipe")
	
	inst.AnimState:SetBank("walrus_bagpipe")
	inst.AnimState:SetBuild("armor_walrus_bagpipe")
	inst.AnimState:PlayAnimation("anim")
	
	--inst.foleysound = "dontstarve/wilson/onemanband"
	
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
	inst.components.fueled:SetDepletedFn(band_perish)
	
	inst:AddComponent("inspectable")
	
	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem:SetSinks(true)
	
	inst:AddComponent("leader")
	
	inst:AddComponent("hauntable")
	inst.components.hauntable:SetHauntValue(TUNING.HAUNT_SMALL)
	inst.components.hauntable:SetOnHauntFn(OnHaunt)
	inst.components.hauntable:SetOnUnHauntFn(OnUnHaunt)
	
	return inst
end

return Prefab("walrus_bagpipe", fn, assets)