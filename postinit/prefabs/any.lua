local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local function NoWalrusAllyRetarget(inst, target)
	if target:HasTag("walruspal") then
		return not inst:HasTag("epic") and not inst:HasTag("warg") -- Puppy's getting too big
	end
end

local function WalrusOrHoundPostInit(inst)
	local oldtargetfn = inst.components.combat and inst.components.combat.targetfn
	
	if oldtargetfn then
		inst.components.combat.targetfn = function(inst, ...)
			local target, forcechange = oldtargetfn(inst, ...)
			if target and NoWalrusAllyRetarget(inst, target) then
				return
			end
			
			return target, forcechange
		end
	end
end

local function WalrusPostInit(inst)
	
end

--

ENV.AddPrefabPostInitAny(function(inst)
	if not TheWorld.ismastersim then
		return
	end
	
	if inst:HasTag("hound") or inst:HasTag("walrus") then
		WalrusOrHoundPostInit(inst)
	end
end)