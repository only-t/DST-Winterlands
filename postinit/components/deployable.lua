local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local Deployable = require("components/deployable")
	
	local OldDeploy = Deployable.Deploy
	function Deployable:Deploy(pt, deployer, ...)
		local block_range = TUNING.SNOW_PLOW_RANGES.REPLACED or 0
		
		if block_range > 0 then
			SpawnPolarSnowBlocker(pt, block_range, TUNING.POLARPLOW_BLOCKER_DURATION, deployer)
		end
		
		return OldDeploy(self, pt, deployer, ...)
	end