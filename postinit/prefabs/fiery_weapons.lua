local ENV = env
GLOBAL.setfenv(1, GLOBAL)

local fiery_weapons = {
    "firestaff",
    "torch",
    "lighter",
    "blowdart_fire"
}

for i, prefab in ipairs(fiery_weapons) do
    ENV.AddPrefabPostInit(prefab, function(inst)
        inst:AddTag("fiery")
    end)
end