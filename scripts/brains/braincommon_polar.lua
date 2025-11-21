local BrainCommon = require("brains/braincommon")

require("behaviours/panic")

--	Get genenal mobs to panic while in Bear Trap

local OldShouldTriggerPanic = BrainCommon.ShouldTriggerPanic
BrainCommon.ShouldTriggerPanic = function(inst)
	return OldShouldTriggerPanic(inst) or (inst:HasTag("walrus_beartrapped") or inst._walrus_beartrap ~= nil)
end

BrainCommon.PanicTrigger = function(inst)
	return WhileNode(function() return BrainCommon.ShouldTriggerPanic(inst) end, "PanicTrigger", Panic(inst))
end