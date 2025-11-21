local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local PlayerActionPicker = require("components/playeractionpicker")

function PlayerActionPicker:GetWalrusBearTrapActions(inst, pos, right)
	if inst:HasTag("walrus_beartrapped") then
		return self:SortActionList({ACTIONS.WALRUS_BEARTRAP_REMOVE}, pos) -- Not actually possible to perform because of busy trapped state, it's just for visuals here
	end
end

local OldGetRightClickActions = PlayerActionPicker.GetRightClickActions
function PlayerActionPicker:GetRightClickActions(position, target, ...)
	local beartrap_actions = self:GetWalrusBearTrapActions(self.inst, position, false)
	
	local actions = OldGetRightClickActions(self, position, target, ...)
	
	if beartrap_actions and not (actions and actions[1] and actions[1].action == ACTIONS.BLINK) then
		return beartrap_actions
	end
	
	return actions
end