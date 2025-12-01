local Screen = require "widgets/screen"
local Widget = require "widgets/widget"
local UIAnim = require "widgets/uianim"
local Text = require "widgets/text"
local ImageButton = require "widgets/imagebutton"

local clickables = {
    {
        x = -290,
        y = 355,
        w = 90,
        h = 120,
        str = "CONTENT #1"
    },
    {
        x = -63,
        y = 180,
        w = 90,
        h = 120,
        str = "CONTENT #2"
    },
    {
        x = 78,
        y = 335,
        w = 90,
        h = 120,
        str = "CONTENT #3"
    },
    {
        x = -165,
        y = 375,
        w = 90,
        h = 110,
        str = "CONTENT #4"
    },
    {
        x = 220,
        y = 185,
        w = 130,
        h = 130,
        str = "CONTENT #5"
    },
    {
        x = -40,
        y = 367,
        w = 90,
        h = 110,
        str = "CONTENT #6"
    },
    {
        x = -290,
        y = 210,
        w = 90,
        h = 110,
        str = "CONTENT #7"
    },
    {
        x = 78,
        y = 165,
        w = 90,
        h = 110,
        str = "CONTENT #8"
    },
    {
        x = -175,
        y = 210,
        w = 90,
        h = 110,
        str = "CONTENT #9"
    },
    {
        x = 205,
        y = 355,
        w = 130,
        h = 130,
        str = "CONTENT #10"
    }
}

local function MakeIcon(id, tooltip)
    local icon = UIAnim()
    icon:GetAnimState():SetBank("polarcalendar_icons")
    icon:GetAnimState():SetBuild("polarcalendar_icons")
    icon:SetPosition(clickables[id].x, clickables[id].y)

    icon.focus_scale = 0.50
    icon.normal_scale = 0.45
    icon:SetScale(icon.normal_scale)

    icon.OnGainFocus = function()
        icon:SetScale(icon.focus_scale)
        tooltip:SetString(clickables[id].str)
        tooltip:Show()
    end
    icon.OnLoseFocus = function()
        icon:SetScale(icon.normal_scale)
        tooltip:Hide()
    end

    return icon
end

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

    self.root = self:AddChild(Widget("root"))
    self.root:SetVAnchor(ANCHOR_MIDDLE)
    self.root:SetHAnchor(ANCHOR_MIDDLE)
    self.root:SetScaleMode(SCALEMODE_PROPORTIONAL)

	self.calendar = self.root:AddChild(UIAnim())
    self.calendar:GetAnimState():SetBank("polarcalendar")
    self.calendar:GetAnimState():SetBuild("polarcalendar")
    self.calendar:SetScale(0.7)
    self.calendar:SetPosition(-35, -230)

	self.tooltip = self.root:AddChild(Text(CHATFONT, 28, ""))
	self.tooltip:SetPosition(0, -305)
	self.tooltip:SetHAlign(ANCHOR_MIDDLE)
	self.tooltip:SetVAlign(ANCHOR_BOTTOM)
	self.tooltip:SetRegionSize(500, 80)
	self.tooltip:EnableWordWrap(false)
    self.tooltip:Hide()

    TheSim:GetPersistentString("winterlands_adventday", function(success, day)
        if success then
            self.active_clickable_day = tonumber(day)
        else
            self.active_clickable_day = 1
        end
    end)

    self.calendar:GetAnimState():PlayAnimation(tostring(self.active_clickable_day - 1))

    self.icons = {  }

    self:RedrawIcons()

    self:InitClickable()

	self.default_focus = self.calendar

    SetAutopaused(true)
end)

local function OnCalendarAnimOver(inst)
    local icon = MakeIcon(inst.widget.parent.parent.active_clickable_day - 1, inst.widget.parent.parent.tooltip)
    icon:GetAnimState():PlayAnimation("icon"..tostring(inst.widget.parent.parent.active_clickable_day - 1))
    inst.widget:AddChild(icon)
    table.insert(inst.widget.parent.parent.icons, icon)

    inst:RemoveEventCallback("animover", OnCalendarAnimOver)
end

function PolarCalendarScreen:InitClickable()
    if not HasPassedCalendarDay(self.active_clickable_day) then
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

        if self.active_clickable_day < FINAL_ADVENT_DAY then
            self:InitClickable()
        end
    end)

    btn:SetHelpTextMessage("")
    btn.scale_on_focus = false

    btn.image:SetTint(1, 0, 0, 0.6)
    btn.image:ScaleToSize(clickables[self.active_clickable_day].w, clickables[self.active_clickable_day].h)
end

function PolarCalendarScreen:RedrawIcons()
    for i, icon in ipairs(self.icons) do
        icon:Kill()
    end

    self.icons = {  }

    for i, data in ipairs(clickables) do
        if i > self.active_clickable_day - 1 then
            break
        end

        local icon = MakeIcon(i, self.tooltip)
        icon:GetAnimState():PlayAnimation("icon"..tostring(i).."_idle")

        self.calendar:AddChild(icon)
        table.insert(self.icons, icon)
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
