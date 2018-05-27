Citizen.CreateThread(function()
    while true do
        Wait(25) -- any faster and you'll be hit with resource warnings, but damn it'll be awesome as hell
        local h = GetClockHours()
        local m = GetClockMinutes()
        if m > 59 then
            m = 0
            h = h + 1
        end
        if h > 23 then
            h = 0
        end
        NetworkOverrideClockTime(h, m + 1, 0)
    end
end)

Citizen.CreateThread(function()
    AddEventHandler('playerSpawned', function(spawn)
        GiveWeaponToPed(GetPlayerPed(-1), "weapon_firework", 20, false, false)
    end)
end)

Citizen.CreateThread(function()
    if NetworkIsHost() then
        RequestModel(GetHashKey("freight"))
        RequestModel(GetHashKey("freightcont2"))
        while not HasModelLoaded(GetHashKey("freight")) and not HasModelLoaded(GetHashKey("freight")) do
            Wait(1)
        end
        local train = CreateMissionTrain(17, -498.4123, 4304.3, 88.40305, true)
        SetEntityAsMissionEntity(train, true, true)
        SetTrainSpeed(train, 300.0)
        SetTrainCruiseSpeed(train, 300.0)
        SetModelAsNoLongerNeeded(GetHashKey("freight"))
        SetModelAsNoLongerNeeded(GetHashKey("freightcont2"))
    end
end)
