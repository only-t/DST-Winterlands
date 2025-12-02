function HasPassedCalendarDay(day)
	local offset = -8 * 3600
	local date = os.date("!*t", os.time() + offset)
	
	return date.month ~= 12 or date.day >= day
end

FINAL_ADVENT_DAY = 25