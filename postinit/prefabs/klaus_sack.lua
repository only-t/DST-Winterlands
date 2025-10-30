local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local OldOnUseKlausKey
local function OnUseKlausKey(inst, key, doer, ...)
	local success, fail_msg, consumed
	if OldOnUseKlausKey then
		success, fail_msg, consumed = OldOnUseKlausKey(inst, key, doer, ...)
	end
	
	if success then
		TheWorld:PushEvent("ms_respawnthronegifts", inst)
	end
	
	return success, fail_msg, consumed
end

--	NOTE: So there's an annoying thing with the stash where it doesn't despawn when supposed to unless a player approch it or on reload.
--		  This actually prevents the Throne' gifts from respawning in normally valid rules, also essential for ez-refresh config... so let's fix it

local function OnDayChange(inst)
	OnEntityWake(inst.GUID)
end

ENV.AddPrefabPostInit("klaus_sack", function(inst)
	inst:AddTag("polarthrone_emptier")
	
	if not TheWorld.ismastersim then
		return
	end
	
	if inst.components.klaussacklock then
		if OldOnUseKlausKey == nil then
			OldOnUseKlausKey = inst.components.klaussacklock.onusekeyfn
		end
		inst.components.klaussacklock:SetOnUseKey(OnUseKlausKey)
	end
	
	inst:WatchWorldState("cycles", OnDayChange)
end)