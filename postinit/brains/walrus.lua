local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local WalrusBrain = require("brains/walrusbrain")
	
	local OldShouldRunAway = PolarUpvalue(WalrusBrain.OnStart, "ShouldRunAway")
	local function ShouldRunAway(guy, ...)
		if guy and guy:HasTag("walruspal") then
			return false
		end
		
		if OldShouldRunAway then
			return OldShouldRunAway(guy, ...)
		end
	end
	
	local ALLY_TAGS = {"walruspal"}
	local ALLY_NOT_TAGS = {"INLIMBO", "isdead"}
	
	local OldGetNoLeaderFollowTarget = PolarUpvalue(WalrusBrain.OnStart, "GetNoLeaderFollowTarget")
	local function GetNoLeaderFollowTarget(inst, ...)
		local ally = FindEntity(inst, 10, nil, ALLY_TAGS, ALLY_NOT_TAGS)
		
		if ally == nil and OldGetNoLeaderFollowTarget then
			return OldGetNoLeaderFollowTarget(inst, ...)
		end
	end
	
	PolarUpvalue(WalrusBrain.OnStart, "ShouldRunAway", ShouldRunAway)
	PolarUpvalue(WalrusBrain.OnStart, "GetNoLeaderFollowTarget", GetNoLeaderFollowTarget)