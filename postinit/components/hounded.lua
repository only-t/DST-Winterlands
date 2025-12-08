local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local Hounded = require("components/hounded")
local OldHounded_ctor = Hounded._ctor

Hounded._ctor = function(self, ...)
	OldHounded_ctor(self, ...)
	
	self._polarify = false
	
	local OldSummonSpawn = PolarUpvalue(self.SummonSpawn, "SummonSpawn")
	local OldGetSpawnPrefab = PolarUpvalue(OldSummonSpawn, "GetSpawnPrefab")
	
	local GetSpawnPoint = PolarUpvalue(OldSummonSpawn, "GetSpawnPoint") -- Keeping these under for simpler mod compat
	local GetSpecialSpawnChance = PolarUpvalue(OldGetSpawnPrefab, "GetSpecialSpawnChance")
	local _spawndata = PolarUpvalue(self.SetSpawnData, "_spawndata")
	local _spawnwintervariant = PolarUpvalue(self.SetWinterVariant, "_spawnwintervariant")
	
	--	Always Ice Hounds In the Winterlands
	
	local function GetSpawnPrefab(upgrade, ...)
		local spawn = OldGetSpawnPrefab(upgrade, ...)
		local spawndata = _spawndata
		local _GetSpecialSpawnChance = GetSpecialSpawnChance
		
		-- Can be disabled from Ice Hounds worldsetting, normally
		if self._polarify and (spawn == "hound" or spawn == "firehound") and _spawndata and _spawnwintervariant then
			spawn = _spawndata.winter_prefab or "icehound"
			self._polarify = false
		end
		
		return spawn
	end
	
	PolarUpvalue(OldSummonSpawn, "GetSpawnPrefab", GetSpawnPrefab)
	
	--	Applying Snowfleas onto spawned Hounds
	
	local function SummonSpawn(pt, upgrade, radius_override, ...)
		local in_polar = GetClosestPolarTileToPoint(pt.x, 0, pt.z, 32) ~= nil
		local _GetSpawnPoint = GetSpawnPoint
		local _GetSpawnPrefab = GetSpawnPrefab
		
		if pt then
			self._polarify = in_polar
		end
		
		local hound = OldSummonSpawn(pt, upgrade, radius_override, ...)
		if hound and hound:IsValid() and in_polar then
			local num_fleas = math.random(TUNING.POLARFLEA_HOUNDED_MIN, TUNING.POLARFLEA_HOUNDED_MAX)
			
			for i = 1, num_fleas do
				local flea = SpawnPrefab("polarflea")
				flea.Transform:SetPosition(hound.Transform:GetWorldPosition())
				
				if flea.SetHost then
					flea:SetHost(hound)
				end
			end
		end
		
		return hound
	end
	
	PolarUpvalue(self.SummonSpawn, "SummonSpawn", SummonSpawn)
	
	--	Bagpipes Hold up
	
	local OldOnUpdate = self.OnUpdate
	local _timetoattack = PolarUpvalue(OldOnUpdate, "_timetoattack")
	local _warning = PolarUpvalue(OldOnUpdate, "_warning")
	local _spawninfo = PolarUpvalue(OldOnUpdate, "_spawninfo")
	local _warnduration = PolarUpvalue(OldOnUpdate, "_warnduration")
	local _nextwarningsound = PolarUpvalue(OldOnUpdate, "_timetonextwarningsound")
	local _pausesources = PolarUpvalue(OldOnUpdate, "_pausesources")
	local _attackplanned = PolarUpvalue(OldOnUpdate, "_attackplanned")
	local _activeplayers = PolarUpvalue(OldOnUpdate, "_activeplayers")
	local _targetableplayers = PolarUpvalue(OldOnUpdate, "_targetableplayers")
	
	function self:OnUpdate(dt, ...)
		-- Keeping chain of references intact...
		local timetoattack, warning, spawninfo, warnduration, nextwarningsound, pausesources, attackplanned, activeplayers, targetableplayers = _timetoattack, _warning, _spawninfo, _warnduration, _nextwarningsound, _pausesources, _attackplanned, _activeplayers, _targetableplayers
		
		if pausesources and next(pausesources) then
			for source, params in pairs(pausesources._modifiers) do
				if params and params.modifiers and params.modifiers["bagpipe"] then
					return
				end
			end
		end
		
		return OldOnUpdate(self, dt, ...)
	end
	
	self.LongUpdate = self.OnUpdate
end