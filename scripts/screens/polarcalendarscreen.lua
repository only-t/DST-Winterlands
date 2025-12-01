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
        tooltip = STRINGS.POLAR_CALENDAR.DAY1_TOOLTIP
    },
    {
        x = -63,
        y = 180,
        w = 90,
        h = 120,
        tooltip = STRINGS.POLAR_CALENDAR.DAY2_TOOLTIP
    },
    {
        x = 78,
        y = 335,
        w = 90,
        h = 120,
        tooltip = STRINGS.POLAR_CALENDAR.DAY3_TOOLTIP
    },
    {
        x = -165,
        y = 375,
        w = 90,
        h = 110,
        tooltip = STRINGS.POLAR_CALENDAR.DAY4_TOOLTIP
    },
    {
        x = 220,
        y = 185,
        w = 130,
        h = 130,
        tooltip = STRINGS.POLAR_CALENDAR.DAY5_TOOLTIP
    },
    {
        x = -40,
        y = 367,
        w = 90,
        h = 110,
        tooltip = STRINGS.POLAR_CALENDAR.DAY6_TOOLTIP
    },
    {
        x = -290,
        y = 210,
        w = 90,
        h = 110,
        tooltip = STRINGS.POLAR_CALENDAR.DAY7_TOOLTIP
    },
    {
        x = 78,
        y = 165,
        w = 90,
        h = 110,
        tooltip = STRINGS.POLAR_CALENDAR.DAY8_TOOLTIP
    },
    {
        x = -175,
        y = 210,
        w = 90,
        h = 110,
        tooltip = STRINGS.POLAR_CALENDAR.DAY9_TOOLTIP
    },
    {
        x = 205,
        y = 355,
        w = 130,
        h = 130,
        tooltip = STRINGS.POLAR_CALENDAR.DAY10_TOOLTIP
    },
    {
        x = 465,
        y = 415,
        w = 110,
        h = 100,
        tooltip = STRINGS.POLAR_CALENDAR.DAY11_TOOLTIP
    },
    {
        x = -450,
        y = 10,
        w = 100,
        h = 100,
        tooltip = STRINGS.POLAR_CALENDAR.DAY12_TOOLTIP
    },
	{
        x = 720,
        y = 35,
        w = 100,
        h = 100,
        tooltip = STRINGS.POLAR_CALENDAR.DAY13_TOOLTIP
	},
	{
        x = -310,
        y = 680,
        w = 120,
        h = 120,
        tooltip = STRINGS.POLAR_CALENDAR.DAY14_TOOLTIP
	},
	{
        x = -500,
        y = 620,
        w = 120,
        h = 120,
        tooltip = STRINGS.POLAR_CALENDAR.DAY15_TOOLTIP
	},
	{
        x = -390,
        y = 400,
        w = 120,
        h = 80,
        tooltip = STRINGS.POLAR_CALENDAR.DAY16_TOOLTIP
	},
	{
        x = 170,
        y = 0,
        w = 120,
        h = 100,
        tooltip = STRINGS.POLAR_CALENDAR.DAY17_TOOLTIP
	},
	{
        x = 570,
        y = 230,
        w = 90,
        h = 130,
        tooltip = STRINGS.POLAR_CALENDAR.DAY18_TOOLTIP
	},
	{
        x = -485,
        y = 200,
        w = 120,
        h = 90,
        tooltip = STRINGS.POLAR_CALENDAR.DAY19_TOOLTIP
	},
	{
        x = -140,
        y = 20,
        w = 150,
        h = 150,
        tooltip = STRINGS.POLAR_CALENDAR.DAY20_TOOLTIP
	},
	{
        x = 335,
        y = 210,
        w = 110,
        h = 70,
        tooltip = STRINGS.POLAR_CALENDAR.DAY21_TOOLTIP
	},
	{
        x = 540,
        y = 55,
        w = 100,
        h = 100,
        tooltip = STRINGS.POLAR_CALENDAR.DAY22_TOOLTIP
	},
	{
        x = -365,
        y = 110,
        w = 100,
        h = 100,
        tooltip = STRINGS.POLAR_CALENDAR.DAY23_TOOLTIP
	},
	{
        x = 675,
        y = 310,
        w = 90,
        h = 130,
        tooltip = STRINGS.POLAR_CALENDAR.DAY24_TOOLTIP
	},
	{
        x = -560,
        y = 60,
        w = 160,
        h = 190,
        tooltip = STRINGS.POLAR_CALENDAR.DAY25_TOOLTIP
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
        tooltip:SetString(clickables[id].tooltip.str)
        tooltip.title:SetString(clickables[id].tooltip.title)
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
    black.image:SetTint(0, 0, 0, 0.6)
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

	self.tooltip = self.root:AddChild(Text(UIFONT, 32, ""))
	self.tooltip:SetPosition(0, -375)
	self.tooltip:SetHAlign(ANCHOR_MIDDLE)
	self.tooltip:SetVAlign(ANCHOR_TOP)
	self.tooltip:SetRegionSize(900, 160)
	self.tooltip:EnableWordWrap(true)
    self.tooltip:Hide()

    self.tooltip.title = self.tooltip:AddChild(Text(UIFONT, 40, ""))
	self.tooltip.title:SetPosition(0, 100)
	self.tooltip.title:SetHAlign(ANCHOR_MIDDLE)
	self.tooltip.title:SetVAlign(ANCHOR_MIDDLE)
	self.tooltip.title:SetRegionSize(400, 80)
	self.tooltip.title:EnableWordWrap(false)

    TheSim:GetPersistentString("winterlands_adventday", function(success, day)
        if success then
            self.active_clickable_day = tonumber(day)
        else
            self.active_clickable_day = 1
        end
    end)

    self.calendar:GetAnimState():PlayAnimation(tostring(self.active_clickable_day - 1))

    self.icons = {  }
    self.numbers = {  }

    self:RedrawIcons()
    self:RedrawNumbers()

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

        self:RedrawNumbers()

        if self.active_clickable_day < FINAL_ADVENT_DAY then
            self:InitClickable()
        end
    end)

    btn:SetHelpTextMessage("")
    btn.scale_on_focus = false

    btn.image:SetTint(0, 0, 0, 0)
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

function PolarCalendarScreen:RedrawNumbers()
    for i, number in ipairs(self.numbers) do
        number:Kill()
    end

    self.numbers = {  }

    for i, data in ipairs(clickables) do
        if i >= self.active_clickable_day then
            local num = Text(UIFONT, 52, tostring(i))
			num:SetClickable(false)
            num:SetHAlign(ANCHOR_MIDDLE)
            num:SetVAlign(ANCHOR_MIDDLE)
            num:SetPosition(data.x, data.y)
            self.calendar:AddChild(num)

            table.insert(self.numbers, num)
        end
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
