local ENV = env
GLOBAL.setfenv(1, GLOBAL)

ENV.AddStategraphPostInit("hound", function(sg)
	local oldhowl = sg.states["howl"].onenter
	sg.states["howl"].onenter = function(inst, data, ...)
		if data == nil then
			data = {}
		end
		
		oldhowl(inst, data, ...)
	end
end)