local Screen = require "widgets/screen"
local UIAnim = require "widgets/uianim"
local ImageButton = require "widgets/imagebutton"

local clickables = {
    {
        x = -290,
        y = 355,
        w = 90,
        h = 120
    },
    {
        x = -63,
        y = 180,
        w = 90,
        h = 120
    },
    {
        x = 78,
        y = 335,
        w = 90,
        h = 120
    },
    {
        x = -165,
        y = 375,
        w = 90,
        h = 110
    },
    {
        x = 220,
        y = 185,
        w = 130,
        h = 130
    },
    {
        x = -40,
        y = 367,
        w = 90,
        h = 110
    },
    {
        x = -290,
        y = 210,
        w = 90,
        h = 110
    },
    {
        x = 78,
        y = 165,
        w = 90,
        h = 110
    },
    {
        x = -175,
        y = 210,
        w = 90,
        h = 110
    },
    {
        x = 205,
        y = 355,
        w = 130,
        h = 130
    }
}

local PolarCalendarScreen = Class(Screen, function(self, owner)
    self.owner = owner
    Screen._ctor(self, "PolarCalendarScreen")

    local black = self:AddChild(ImageButton("images/global.xml", "square.tex"))
    black.image:SetVRegPoint(ANCHOR_MIDDLE)
    black.image:SetHRegPoint(ANCHOR_MIDDLE)
    black.image:SetVAnchor(ANCHOR_MIDDLE)
    black.image:SetHAnchor(ANCHOR_MIDDLE)
    black.image:SetScaleMode(SCALEMODE_FILLSCREEN)
    black.image:SetTint(0, 0, 0, 0.5)
    black:SetOnClick(function() TheFrontEnd:PopScreen() end)
    black:SetHelpTextMessage("")

	self.calendar = self:AddChild(UIAnim())
    self.calendar:GetAnimState():SetBank("polarcalendar")
    self.calendar:GetAnimState():SetBuild("polarcalendar")
    self.calendar:SetScale(0.85)
    self.calendar:SetPosition(-35, -265)
    self.calendar:SetVAnchor(ANCHOR_MIDDLE)
    self.calendar:SetHAnchor(ANCHOR_MIDDLE)

    TheSim:GetPersistentString("winterlands_adventday", function(success, day)
        if success then
            self.active_clickable_day = tonumber(day)
        else
            self.active_clickable_day = 1
        end
    end)

    self.calendar:GetAnimState():PlayAnimation(tostring(self.active_clickable_day - 1))

    self:RedrawIcons()

    self:InitClickable()

	self.default_focus = self.calendar

    SetAutopaused(true)
end)

local function OnCalendarAnimOver(inst)
    local icon = inst.widget:AddChild(UIAnim())
    icon:GetAnimState():SetBank("polarcalendar_icons")
    icon:GetAnimState():SetBuild("polarcalendar_icons")
    icon:GetAnimState():PlayAnimation("icon"..tostring(inst.widget.parent.active_clickable_day - 1))
    icon:SetScale(0.45)
    icon:SetPosition(clickables[inst.widget.parent.active_clickable_day - 1].x, clickables[inst.widget.parent.active_clickable_day - 1].y)

    inst:RemoveEventCallback("animover", OnCalendarAnimOver)
end

function PolarCalendarScreen:InitClickable()
    if self.active_clickable_day > ADVENT_DAY then
        return
    end

    local btn = self.calendar:AddChild(ImageButton("images/global.xml", "square.tex"))
    btn:SetPosition(clickables[self.active_clickable_day].x, clickables[self.active_clickable_day].y)
    btn:SetOnClick(function()
        self:RedrawIcons() -- In case someone spam clicks the tiles
        self.calendar.inst:RemoveEventCallback("animover", OnCalendarAnimOver)
        self.calendar:GetAnimState():PlayAnimation(tostring(self.active_clickable_day - 1).."to"..tostring(self.active_clickable_day))
        self.calendar.inst:ListenForEvent("animover", OnCalendarAnimOver)
        btn:Kill()

        self.active_clickable_day = self.active_clickable_day + 1
        TheSim:SetPersistentString("winterlands_adventday", tostring(self.active_clickable_day), false)

        if self.active_clickable_day < ADVENT_DAY then
            self:InitClickable()
        end
    end)

    btn:SetHelpTextMessage("")
    btn.scale_on_focus = false

    btn.image:SetTint(1, 0, 0, 0.6)
    btn.image:ScaleToSize(clickables[self.active_clickable_day].w, clickables[self.active_clickable_day].h)
end

function PolarCalendarScreen:RedrawIcons()
    for i, data in ipairs(clickables) do
        if i > self.active_clickable_day - 1 then
            break
        end

        local icon = self.calendar:AddChild(UIAnim())
        icon:GetAnimState():SetBank("polarcalendar_icons")
        icon:GetAnimState():SetBuild("polarcalendar_icons")
        icon:GetAnimState():PlayAnimation("icon"..tostring(i).."_idle")
        icon:SetScale(0.45)
        icon:SetPosition(data.x, data.y)
    end
end

function PolarCalendarScreen:OnDestroy()
    SetAutopaused(false)

	PolarCalendarScreen._base.OnDestroy(self)
end

function PolarCalendarScreen:OnBecomeInactive()
    PolarCalendarScreen._base.OnBecomeInactive(self)
end

function PolarCalendarScreen:OnBecomeActive()
    PolarCalendarScreen._base.OnBecomeActive(self)
end

function PolarCalendarScreen:OnControl(control, down)
    if PolarCalendarScreen._base.OnControl(self, control, down) then return true end

    if not down and (control == CONTROL_MENU_BACK or control == CONTROL_CANCEL) then
		TheFrontEnd:GetSound():PlaySound("dontstarve/HUD/click_move")
        TheFrontEnd:PopScreen()
        return true
    end

	return false
end

function PolarCalendarScreen:GetHelpText()
    local controller_id = TheInput:GetControllerID()
    local t = {  }

    table.insert(t,  TheInput:GetLocalizedControl(controller_id, CONTROL_CANCEL) .. " " .. STRINGS.UI.HELP.BACK)

    return table.concat(t, "  ")
end

return PolarCalendarScreen
