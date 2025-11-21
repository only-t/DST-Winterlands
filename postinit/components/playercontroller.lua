local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local PlayerController = require("components/playercontroller")

local OldOnControl = PlayerController.OnControl
function PlayerController:OnControl(control, down, ...)
	if not IsPaused() and control == CONTROL_SECONDARY and down and self.inst:HasTag("walrus_beartrapped")
		and self.inst.AnimState:IsCurrentAnimation("beartrap_snared_loop") and TheInput:GetHUDEntityUnderMouse() == nil then
		
		local act = self:GetRightMouseAction()
		local isblink = act and act.action == ACTIONS.BLINK
		local pos = isblink and act:GetActionPoint() or nil
		
		if self.ismastersim then
			local x, y, z = self.inst.Transform:GetWorldPosition()
			if isblink and pos then
				self.inst:FacePoint(pos)
				self.inst:PushBufferedAction(act, true)
			elseif y <= 2 then
				self.inst:PushEvent("walrus_beartrapped", {doer = self.inst, struggle = true})
			end
		else
			if not isblink or pos == nil then
				SendModRPCToServer(GetModRPC("Winterlands", "WalrusTrap_Remove"), isblink)
				return
			end
			
			SendModRPCToServer(GetModRPC("Winterlands", "WalrusTrap_Remove"), true, pos.x, pos.y, pos.z, act.invobject ~= nil, act.target ~= nil)
		end
		
		return
	end
	
	return OldOnControl(self, control, down, ...)
end
