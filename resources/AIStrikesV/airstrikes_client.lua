
IsAttackOnGoing = false
  
  
  RegisterCommand("airstrike", function(source,args,raw)
  if args[1] == "light" or args[1] == "medium" or args[1] == "heavy" or args[1] == "armageddon" then
    TriggerEvent("Airstrike:Execute",GetEntityCoords(PlayerPedId()).x,GetEntityCoords(PlayerPedId()).y,GetEntityCoords(PlayerPedId()).z,args[1])
  end
  end, false)
  
  RegisterNetEvent("Airstrike:Execute")
  
  AddEventHandler("Airstrike:Execute", function(x,y,z,attacktype)
  CreateThread(function()
  local wanted_model="S_M_Y_MARINE_01" --Marine Army Guard
  local modelHash = GetHashKey(wanted_model)
  local hash = GetHashKey("lazer")
  
  RequestModel(hash)
  RequestModel(modelHash)
  RequestModel(GetHashKey("bombushka"))
  while not HasModelLoaded(modelHash) and not HasModelLoaded(hash) and not HasModelLoaded(GetHashKey("bombushka")) do
    Wait(1)
  end
  if attacktype == "light" then
    local aircraft = CreateVehicle(hash, 4510.431, 330.208, 519.128, 0.0, true, true)
    local pilot = CreatePedInsideVehicle(aircraft, 1, modelHash, -1, true, true)
    local blip = AddBlipForEntity(aircraft)
    TaskVehicleDriveToCoord(pilot, aircraft, x,y,z, 2500.0*3.6, 500, hash, 16777216, 1.0, 1)
    while true do
  
      if (x-10)<GetEntityCoords(aircraft).x and GetEntityCoords(aircraft).x<(x+10) and (y-10)<GetEntityCoords(aircraft).y and GetEntityCoords(aircraft).y<(y+10)  then
        print("the aircraft is going down in 15 seconds")
        if not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) then
          RequestWeaponAsset(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), 31, 0)
          while not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) do
            Wait(0)
          end
        end
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1, 1, 0)
        AddExplosion(x, y, z, 5, 50.0, true, false, true)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft).x, GetEntityCoords(aircraft).y, GetEntityCoords(aircraft).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft).x, GetEntityCoords(aircraft).y, GetEntityCoords(aircraft).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.3, 6.2, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft).x, GetEntityCoords(aircraft).y, GetEntityCoords(aircraft).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.1, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft).x, GetEntityCoords(aircraft).y, GetEntityCoords(aircraft).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.5, 3, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft).x, GetEntityCoords(aircraft).y, GetEntityCoords(aircraft).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.567, 4.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft).x, GetEntityCoords(aircraft).y, GetEntityCoords(aircraft).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.123, 6.1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft).x, GetEntityCoords(aircraft).y, GetEntityCoords(aircraft).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.5, 1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft).x, GetEntityCoords(aircraft).y, GetEntityCoords(aircraft).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        Wait(15000)
        SetEntityHealth(aircraft, 0)
        SetEntityHealth(pilot, 0)
        NetworkExplodeVehicle(aircraft, true, false, false)
        RemoveBlip(blip)
        break
      end
      Wait(0)
    end
  elseif attacktype == "medium" and not IsAttackOnGoing then
    aircraft1 = CreateVehicle(hash, -2295.139, 3133.336, 700.413, 216.675, true, true)
    pilot1 = CreatePedInsideVehicle(aircraft1, 1, modelHash, -1, true, true)
    aircraft2 = CreateVehicle(hash, -2359.747, 3110.871, 700.413, 216.675, true, true)
    pilot2 = CreatePedInsideVehicle(aircraft2, 1, modelHash, -1, true, true)
    aircraft3 = CreateVehicle(hash, -1092.558, 2915.600, 700.413, 216.675, true, true)
    pilot3 = CreatePedInsideVehicle(aircraft3, 1, modelHash, -1, true, true)
    blip1 = AddBlipForEntity(aircraft1)
    blip2 = AddBlipForEntity(aircraft2)
    blip3 = AddBlipForEntity(aircraft3)
    isAttack1Done = false
    isAttack2Done = false
    isAttack3Done = false


    TaskVehicleDriveToCoord(pilot1, aircraft1, x,y,z, 2500.0*3.6, 500, hash, 16777216, 1.0, 1)
    TaskVehicleDriveToCoord(pilot2, aircraft2, x,y,z, 2500.0*3.6, 500, hash, 16777216, 1.0, 1)
    TaskVehicleDriveToCoord(pilot3, aircraft3, x,y,z, 2500.0*3.6, 500, hash, 16777216, 1.0, 1)
    print(GetEntityHealth(aircraft1),GetEntityHealth(aircraft2),GetEntityHealth(aircraft3))
    IsAttackOnGoing = true
    while (not IsEntityDead(pilot1)) or (not IsEntityDead(pilot2)) or (not IsEntityDead(pilot3))  do
      if (x-30)<GetEntityCoords(aircraft1).x and GetEntityCoords(aircraft1).x<(x+30) and (y-30)<GetEntityCoords(aircraft1).y and GetEntityCoords(aircraft1).y<(y+30) and not isAttack1Done  then
        isAttack1Done=true
        Citizen.CreateThread(function()
        print("the aircraft is going down in 15 seconds")
        if not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) then
          RequestWeaponAsset(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), 31, 0)
          while not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) do
            Wait(0)
          end
        end
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1, 1, 0)
        AddExplosion(x, y, z, 5, 50.0, true, false, true)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.3, 6.2, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.1, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.5, 3, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.567, 4.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.123, 6.1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.5, 1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        Wait(15000)
        SetEntityHealth(aircraft1, 0)
        SetEntityHealth(pilot1, 0)
        NetworkExplodeVehicle(aircraft1, true, false, false)
        RemoveBlip(blip1)
        end)
      end
      if (x-30)<GetEntityCoords(aircraft2).x and GetEntityCoords(aircraft2).x<(x+30) and (y-30)<GetEntityCoords(aircraft2).y and GetEntityCoords(aircraft2).y<(y+30) and not isAttack2Done then
        isAttack2Done = true
        Citizen.CreateThread(function()
        print("the aircraft is going down in 15 seconds")
        if not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) then
          RequestWeaponAsset(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), 31, 0)
          while not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) do
            Wait(0)
          end
        end
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1, 1, 0)
        AddExplosion(x, y, z, 5, 50.0, true, false, true)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.3, 6.2, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.1, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.5, 3, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.567, 4.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.123, 6.1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.5, 1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        Wait(15000)
        SetEntityHealth(aircraft2, 0)
        SetEntityHealth(pilot2, 0)
        NetworkExplodeVehicle(aircraft2, true, false, false)
        RemoveBlip(blip2)
        end)
      end
      if (x-30)<GetEntityCoords(aircraft3).x and GetEntityCoords(aircraft3).x<(x+30) and (y-30)<GetEntityCoords(aircraft3).y and GetEntityCoords(aircraft3).y<(y+30) and not isAttack3Done then
        isAttack3Done=true
        Citizen.CreateThread(function()
        print("the aircraft is going down in 15 seconds")
        if not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) then
          RequestWeaponAsset(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), 31, 0)
          while not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) do
            Wait(0)
          end
        end
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1, 1, 0)
        AddExplosion(x, y, z, 5, 50.0, true, false, true)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.3, 6.2, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.1, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.5, 3, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.567, 4.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.123, 6.1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.5, 1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        Wait(15000)
        SetEntityHealth(aircraft3, 0)
        SetEntityHealth(pilot3, 0)
        NetworkExplodeVehicle(aircraft3, true, false, false)
        RemoveBlip(blip3)
        end)
      end
      Wait(0)
    end
    IsAttackOnGoing = false
  elseif attacktype == "heavy" and not IsAttackOnGoing then
    aircraft1 = CreateVehicle(GetHashKey("bombushka"), -2295.139, 3133.336, 700.413, 216.675, true, true)
    pilot1 = CreatePedInsideVehicle(aircraft1, 1, modelHash, -1, true, true)
    aircraft2 = CreateVehicle(hash, -2359.747, 3110.871, 700.413, 216.675, true, true)
    pilot2 = CreatePedInsideVehicle(aircraft2, 1, modelHash, -1, true, true)
    aircraft3 = CreateVehicle(hash, -1092.558, 2915.600, 700.413, 216.675, true, true)
    pilot3 = CreatePedInsideVehicle(aircraft3, 1, modelHash, -1, true, true)

    blip1 = AddBlipForEntity(aircraft1)
    blip2 = AddBlipForEntity(aircraft2)
    blip3 = AddBlipForEntity(aircraft3)
    isAttack1Done = false
    isAttack2Done = false
    isAttack3Done = false


    TaskVehicleDriveToCoord(pilot1, aircraft1, x,y,z+100.0, 200.0*3.6, 500, hash, 16777216, 1.0, 1)
    TaskVehicleDriveToCoord(pilot2, aircraft2, x,y,z, 2500.0*3.6, 500, hash, 16777216, 1.0, 1)
    TaskVehicleDriveToCoord(pilot3, aircraft3, x,y,z, 2500.0*3.6, 500, hash, 16777216, 1.0, 1)
    print(GetEntityHealth(aircraft1),GetEntityHealth(aircraft2),GetEntityHealth(aircraft3))
    IsAttackOnGoing = true
    while ((not IsEntityDead(pilot1)) or (not IsEntityDead(pilot2)) or (not IsEntityDead(pilot3)))  do
      if (x-30)<GetEntityCoords(aircraft1).x and GetEntityCoords(aircraft1).x<(x+30) and (y-30)<GetEntityCoords(aircraft1).y and GetEntityCoords(aircraft1).y<(y+30) and not isAttack1Done  then
        isAttack1Done=true
        Citizen.CreateThread(function()
        print("the aircraft is going down in 15 seconds")
        if not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) then
          RequestWeaponAsset(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), 31, 0)
          while not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) do
            Wait(0)
          end
        end
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.59136102070133, -13.204671265506263, 0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.40159832650778, -33.03114761345405, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.29340692976286, 1.240475062724535, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.7384343567734, 22.618135185585043, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.24566685725848, -19.411520635404855, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.7914360524223, 44.335786588784586, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -21.951373381563926, -6.354700428157713, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 32.887234472113434, 29.627852406513643, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.36009586294995, -41.34579934638165, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.222373147733805, -37.511709884794556, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -22.106016190826196, -40.91771885021811, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -47.21130436429155, 8.401294485206499, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.075569399075164, -21.189398328718042, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.672365046789736, -28.24237048636111, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.440047568664426, -17.990103557576703, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.1827803243849715, 19.986423296896817, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.32174435000324, 39.70713064947429, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.53515258646877, -31.270925099626808, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.97420955330786, 48.7639399589882, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.3173042009184, 20.843319762564438, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 44.7000435361999, -26.33991254696599, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.25795698262526, 22.879738229290815, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.755805901750264, -44.706453887367005, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.59043866452751, -20.840604612565045, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.108947089933878, -32.28526189247016, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.847087681807768, 22.790597026031612, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.68149929957208, -28.71846422716922, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.40868175436661, -3.7771812508762466, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.652309869820286, 39.13724227376374, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.987995386596808, -47.684247271171714, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.546240267758606, -32.05617908046594, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.447414906282283, -29.419350507692798, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -30.54209035577864, -38.74951165062228, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.821006636514703, 2.5556420321946263, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.6628666988002, -2.250888784052016, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.57439543416798, -14.293876869548797, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.623939837183393, -48.80879099309547, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 33.668215238937265, 29.40914748126875, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.514877752434, 15.406132719605623, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.18574399503922, 24.459144065716764, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.086288115518755, 8.319276335823766, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.99985851687006, 17.844600496585826, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.975070784868873, 19.05792441824783, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -42.78297172528205, 34.58579228725067, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -12.636223754747668, 24.93825276244046, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.098428270823575, -44.81795694877526, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.891320520838946, 6.428067768401327, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.33815077806801, 31.956759133002176, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -14.343973711278409, -46.82797771992877, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.426825480552779, 20.26580505402309, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.39924176558462, -20.427320402994866, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 23.466280754190947, 9.36018562656895, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.35850855936616, 13.781464820729262, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.73853075407713, -24.69405264760522, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.342396188264914, 42.67516295127247, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.194445758987463, -3.7989385610226947, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.826528713794026, -27.301739582654804, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.175961189464907, 14.454987143240672, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.7765644203799695, 46.30642958299338, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.3120399594152232, 33.50501882102983, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.81561964979849, 36.74555227721776, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.473268615994655, 10.663512168433996, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.187062333786066, 32.24626435437594, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.0786450160914, 6.329238907433663, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -14.971517016094111, -4.646148471951818, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.2881139520114, 2.3128157157611184, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.751595472036275, 31.574076251549844, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.793287907716248, 8.978796524907025, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.353184033402485, -12.39818822993093, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.146422720349264, 46.8722456311278, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.96531949505052, -42.5819161513552, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -32.620941398003396, 13.68717737803997, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.958756073328964, 34.64968261009167, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.696408026522647, 11.083051418510607, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -27.30190393058885, -16.53248401258756, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.9225631346589935, 2.522643200280953, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.62561592007719, -42.15163991593984, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 19.295454344310947, 9.596002326173014, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.472439441643246, 39.14276213377339, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -17.046690272907085, 20.70523808740927, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 0.5541518284011531, 0.3783619090445427, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -10.339968103340965, -26.2528970506188, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.904063026048156, -46.33204399713058, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.8943703448779, -37.30046748470832, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.3196150937132103, 36.80534993780946, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 18.50503933403196, 33.22955302913917, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.333357864853117, -25.328717023956244, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.531503689824476, 38.6031580372411, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -37.166649191739424, 3.9063301709261395, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.775537783275276, 2.8886684478251183, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 6.589960743987277, 46.610711995757036, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 14.721783800769941, -49.50204986080975, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.475045061733965, 5.60152107387173, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 44.85135449111532, 47.308003416532806, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.64258783568131, 1.9866406001916914, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.67898823992529, 3.1642403208005803, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.553341684416342, 3.9233947652346473, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.646983734604859, -40.03466431916823, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.732011792302075, -30.114467561280406, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -40.6453998058748, -27.38014020041672, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.069915105803034, 2.5492390300322825, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 0.9409119404719917, 33.91109848399472, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -9.228774040245312, -32.155245773559045, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.981334602562221, 28.48383741204521, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.40745797581141, 45.19448594390823, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.754654095645748, 30.684479147718502, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.064583600091808, -18.089766767625306, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.299950879556214, -39.76858985537932, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.974528546906924, 25.831878320267123, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -31.88612827058543, -35.693002750247956, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.743716116984075, -8.689975695812137, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.05954108500865, -27.78098763157017, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.51316559704869, -6.003856935230978, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.1179037147785, 34.97513787468427, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -38.786412744509676, -15.368605381302132, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.32307324420402, -11.731251991796924, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -21.765221474060567, 3.8696812702663266, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -19.0350063682385, 29.065465895502072, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.85146726172215, 4.023819623624391, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.48750063487745, -0.4203331397291805, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 6.570888193623169, 31.67736832243053, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.780326375713798, 34.72854199657374, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.41684425593294, -19.28053810972716, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.227546860077933, 0.38845444995718736, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -31.639572797316546, -41.367760468856375, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.76694249070181, -21.7751685513621, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.98127115572906, 26.737979111879806, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.7154261106459927, 23.238097704069325, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.392780102169198, -6.9138461316956565, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.303202518783131, 39.339939882296406, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 23.082875372208278, 4.736587530296667, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 41.73492929676421, -21.720314738196066, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 34.891527979771375, 27.01322772946697, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.2962227752117315, 6.490517929021578, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.430936014543164, 28.22350511887466, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.4557842336282434, -23.38495936433918, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.0734199097387, 33.38651612650108, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.837801581941484, -34.90951354268634, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -35.59380131267258, -20.298496227029858, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.6689653134791556, 20.182950272843136, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.602892729651245, 21.811800351140896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.676762432955456, 24.715972442789624, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.106691909847271, 17.88873551433121, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.760837696966675, -8.62335583123275, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.205093985459115, 47.683660839493555, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.366490077139233, -33.675944558158676, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.58410176405992, -41.433861243254725, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.378202100391171, -28.828772568951152, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.349623610457996, 31.373706036645554, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.628815328255385, -31.511242049766423, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -42.330733696667735, 42.28067362890844, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.001135348140814, 12.805390520319946, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.289100702750574, 6.405084545227922, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 39.929186304873525, 7.8636137019836525, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.7031478114273355, 46.84600738459863, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.936299298424146, 35.22958953813513, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.656453863556848, 45.089677998490686, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.62590787091417, 17.398626801782726, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.116746775324387, -19.640364914670656, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.63055296163098, 5.683470110731804, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -45.70886027302879, 9.214748417149401, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.499784486020886, -15.034537319621762, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.416266889890736, -36.2112941633312, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.56455849326631, 42.3998806971009, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.94949337802096, 1.481013437791546, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -36.37584190737762, -5.285958324274695, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.999411582542084, 35.089414768127945, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.340191871670726, -17.441575298566292, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.914022379881686, 8.76824797743516, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.32508648234508, -19.01107659744909, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.05757144964784, -42.26495456396198, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.206994191437055, 37.03843674427915, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.852909550745665, 36.85116267151285, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -38.459976446710286, 12.089173565882795, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.055633065670683, 33.19903350611719, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15.140921630449668, -35.10342987131733, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.43191572287067, -11.922267278862655, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.308011946201784, -10.791277646152551, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -45.41432290348024, -37.60306206478478, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.65515186532629, -20.822651613047043, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.880999182092403, -17.602480172791218, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -31.020551345793336, -4.2491253324769644, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.62470032841492, -28.60288870004068, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.028425443280419, -44.620628230315916, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.68804689259443, -44.78955393141557, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.413058476023139, -49.03047769326325, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.74255800852937, 5.338202711462571, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.02150806988631, 42.98304172980683, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -7.268040625949482, -25.835588455495895, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 33.67556386269639, 19.55798979812977, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.401848165711442, -5.976835405732572, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -23.662016664846504, 8.435353720629493, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.31520912487048, -39.31647202391079, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.89550422307369, -13.526399141264477, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.7813162311890665, 7.4319560043897965, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 47.20147754465878, 34.11675016091602, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -19.001955537088207, 6.994135569586078, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.0388211358318244, 29.695619736410038, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.848591730556244, 30.175672587466007, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.889001152067749, 48.093693306142036, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.283533129203242, -41.68315672368135, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.449438259046033, -0.6208146802210166, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.65210333504069, 25.806444905328284, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -21.163687446763518, 11.057207890371032, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.667336219935912, 13.304430314272821, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.793467165825646, 27.70066434233702, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 47.5388646756892, 9.308369318488666, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.74772967200881, -19.072606286360852, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -40.803126669735306, 36.706148989738786, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -10.609231991997412, 43.86618841030325, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.30119442866491, 42.598116615135126, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.991838642954775, -10.059769865355307, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.901447364175695, -30.0641721548879, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.43673829089876, -33.94662041983305, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.38145953630465, -9.265213204894174, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.69105531839736, -14.428256526142121, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.29447361055744, -20.840499665211865, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -10.2107915253276, 26.418129785231102, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.70131061086454, 14.636451882312954, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.21898875207372, 21.95728929508798, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.520593533767226, 45.6787145612465, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.03451886687368, -4.260843713125254, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.47136164610584, -1.037394853475604, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.399868603384945, -30.813382851133753, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.679965444337043, -25.299038399574584, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -35.07800233401157, -45.254661383683256, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.003327834289053, -40.86953881314966, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.153020178128088, 30.612366618001772, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.288321766766675, 34.91385597514862, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 47.76415627485777, 28.463521945235204, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.60947242166637, 3.87130393479309, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.84419751072771, 35.44397742612835, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.086725512832757, -29.467355020834816, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.152139242669918, 15.316227912112957, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.7026956780000972, 26.67862265568004, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.11595562953856, 49.665564305743935, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 34.216366503246846, 27.7496328663172, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.71167817345687, -27.336846000179065, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -45.81148857169414, 49.04168490770269, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.62216552159574, -42.84901566354107, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 6.733818142793659, -37.85430932834201, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.658330429527005, 10.464671173371109, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.477711901728568, -11.510453580921599, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -14.281375401154548, -1.0178741242260685, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.183907786923342, -15.867961314816867, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.520588054814866, -16.613379834611038, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 18.83288750768952, 48.91415408902444, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 47.63687479764152, 0.5281269277044061, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.959161975745793, -10.503782264715376, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.76281783853613, -43.65321985952872, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.949743395624495, -35.164454220300286, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.79279258842551, -38.349743436724836, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.73933150390699, 11.468151197074896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 34.386017316771444, 15.267758283062285, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -36.97750036761202, 8.460404067419638, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.94664967564637, -46.69816098856221, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -19.735815901426918, 22.230773664998303, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.190144233391152, 17.3992161708332, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.15710572508533, 0.8521180663496821, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.72710071587996, 27.55635389694897, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.170018925629883, 26.706121183370833, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.661531773982446, -24.540062346537027, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 41.95282032950425, 10.817589275535198, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -32.4815216036868, 30.062547158941854, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.37666266342459, -13.78766922739105, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.71463915225321, 47.205406051378596, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1.9727545055303821, -29.93402050093404, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.448490430213994, 35.80716878832078, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.43933152052681, 22.259230167673326, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.547542695861296, -44.651697191049806, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -43.633510543602, -8.859189364139361, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 13.31983467268185, 49.00276532099524, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 39.24510975774642, 5.091302228214545, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.6340457274221833, -20.85005431495155, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.02488085727113, 12.406020592353741, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.8393449592956301, -7.414574294506714, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.419378542014954, 40.94191890194057, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.728162223777048, 11.356165798628638, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -9.195697615268813, 5.474600049798049, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.990870258780994, 36.353730104118156, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.638922840433302, -37.02313576531293, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.85509418530463, 13.424363576797063, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.125611335400059, 8.853188604716756, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.046239223226358, 45.50720634831844, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.62027932968851, 44.86136885861076, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -38.73286022149067, 17.661922976712276, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -35.73990459058061, -26.232640220398977, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.866190940119687, -2.8310749898071705, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.595009241839612, -24.326574697269223, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.69701099104288, 8.760034346255232, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.33134327304251, 45.34206821402218, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.6056941579847, -3.4972492674567164, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.216314695708114, -36.01317555391705, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.17197889462755, -32.904054518003974, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.4867129946595, 44.19946179810654, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.088053587533807, 18.311833348666752, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -37.33675339224685, -46.865208051697735, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.331674380322557, -28.488021256507494, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.269123633950535, -46.072406280932185, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15.559540860234804, -20.85118302128501, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ClearPedTasks(pilot1)
        Wait(15000)
        SetEntityHealth(aircraft1, 0)
        SetEntityHealth(pilot1, 0)
        NetworkExplodeVehicle(aircraft1, true, false, false)
        RemoveBlip(blip1)
      end)
      end
      if (x-30)<GetEntityCoords(aircraft2).x and GetEntityCoords(aircraft2).x<(x+30) and (y-30)<GetEntityCoords(aircraft2).y and GetEntityCoords(aircraft2).y<(y+30) and not isAttack2Done then
        isAttack2Done = true
        Citizen.CreateThread(function()
        print("the second aircraft is going down in 15 seconds")
        if not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) then
          RequestWeaponAsset(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), 31, 0)
          while not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) do
            Wait(0)
          end
        end
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1, 1, 0)
        AddExplosion(x, y, z, 5, 50.0, true, false, true)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.3, 6.2, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.1, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.5, 3, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.567, 4.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.123, 6.1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.5, 1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.567, 9.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.567, 9.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.567, 12.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.456, 6.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.567, 19.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.0, 18.45, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.567, 17.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.567, 29.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.567, 29.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.567, 22.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.567, 25.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft2).y, GetEntityCoords(aircraft2).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        Wait(15000)
        SetEntityHealth(aircraft2, 0)
        SetEntityHealth(pilot2, 0)
        NetworkExplodeVehicle(aircraft2, true, false, false)
        RemoveBlip(blip2)
      end)
      end
      if (x-30)<GetEntityCoords(aircraft3).x and GetEntityCoords(aircraft3).x<(x+30) and (y-30)<GetEntityCoords(aircraft3).y and GetEntityCoords(aircraft3).y<(y+30) and not isAttack3Done then
        isAttack3Done=true
        Citizen.CreateThread(function()
        print("the third aircraft is going down in 15 seconds")
        if not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) then
          RequestWeaponAsset(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), 31, 0)
          while not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) do
            Wait(0)
          end
        end
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1, 1, 0)
        AddExplosion(x, y, z, 5, 50.0, true, false, true)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.3, 6.2, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.1, -1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.5, 3, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.567, 4.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.567, 9.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.567, 9.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.567, 12.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.456, 6.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.567, 19.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 13.567, 19.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.123, 6.1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.5, 1, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.0, 18.45, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.567, 17.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.567, 29.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.567, 29.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.567, 22.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.567, 25.32, 0)
        Wait(100)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft3).y, GetEntityCoords(aircraft3).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        AddExplosion(offset.x,offset.y,offset.z, GetHashKey("EXPLOSION_BLIMP"), 5000.0, true, false, true,true)
        Wait(15000)
        SetEntityHealth(aircraft3, 0)
        SetEntityHealth(pilot3, 0)
        NetworkExplodeVehicle(aircraft3, true, false, false)
        RemoveBlip(blip3)
      end)
      end
      Wait(0)
    end
    IsAttackOnGoing = false
  --[[ elseif attacktype == "armageddon" then
    aircraft1 = CreateVehicle(GetHashKey("bombushka"), -2295.139, 3133.336, 700.413, 216.675, true, true)
    pilot1 = CreatePedInsideVehicle(aircraft1, 1, modelHash, -1, true, true)
    aircraft2 = CreateVehicle(GetHashKey("bombushka"), -2359.747, 3110.871, 700.413, 216.675, true, true)
    pilot2 = CreatePedInsideVehicle(aircraft2, 1, modelHash, -1, true, true)
    aircraft3 = CreateVehicle(GetHashKey("bombushka"), -1092.558, 2915.600, 700.413, 216.675, true, true)
    pilot3 = CreatePedInsideVehicle(aircraft3, 1, modelHash, -1, true, true)



    blip1 = AddBlipForEntity(aircraft1)
    blip2 = AddBlipForEntity(aircraft2)
    blip3 = AddBlipForEntity(aircraft3)
    isAttack1Done = false
    isAttack2Done = false
    isAttack3Done = false


    TaskVehicleDriveToCoord(pilot1, aircraft1, x,y,z+100.0, 2500.0*3.6, 500, hash, 16777216, 1.0, 1)
    TaskVehicleDriveToCoord(pilot2, aircraft2, x,y,z, 2500.0*3.6, 500, hash, 16777216, 1.0, 1)
    TaskVehicleDriveToCoord(pilot3, aircraft3, x,y,z, 2500.0*3.6, 500, hash, 16777216, 1.0, 1)
    print(GetEntityHealth(aircraft1),GetEntityHealth(aircraft2),GetEntityHealth(aircraft3))
    while ((not IsEntityDead(pilot1)) or (not IsEntityDead(pilot2)) or (not IsEntityDead(pilot3)))  do
      if (x-30)<GetEntityCoords(aircraft1).x and GetEntityCoords(aircraft1).x<(x+30) and (y-30)<GetEntityCoords(aircraft1).y and GetEntityCoords(aircraft1).y<(y+30) and not isAttack1Done  then
        isAttack1Done=true
        Citizen.CreateThread(function()
        print("the aircraft is going down in 15 seconds")
        if not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) then
          RequestWeaponAsset(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), 31, 0)
          while not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) do
            Wait(0)
          end
        end
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.59136102070133, -13.204671265506263, 0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.40159832650778, -33.03114761345405, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.29340692976286, 1.240475062724535, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.7384343567734, 22.618135185585043, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.24566685725848, -19.411520635404855, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.7914360524223, 44.335786588784586, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -21.951373381563926, -6.354700428157713, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 32.887234472113434, 29.627852406513643, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.36009586294995, -41.34579934638165, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.222373147733805, -37.511709884794556, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -22.106016190826196, -40.91771885021811, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -47.21130436429155, 8.401294485206499, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.075569399075164, -21.189398328718042, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.672365046789736, -28.24237048636111, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.440047568664426, -17.990103557576703, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.1827803243849715, 19.986423296896817, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.32174435000324, 39.70713064947429, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.53515258646877, -31.270925099626808, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.97420955330786, 48.7639399589882, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.3173042009184, 20.843319762564438, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 44.7000435361999, -26.33991254696599, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.25795698262526, 22.879738229290815, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.755805901750264, -44.706453887367005, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.59043866452751, -20.840604612565045, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.108947089933878, -32.28526189247016, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.847087681807768, 22.790597026031612, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.68149929957208, -28.71846422716922, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.40868175436661, -3.7771812508762466, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.652309869820286, 39.13724227376374, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.987995386596808, -47.684247271171714, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.546240267758606, -32.05617908046594, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.447414906282283, -29.419350507692798, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -30.54209035577864, -38.74951165062228, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.821006636514703, 2.5556420321946263, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.6628666988002, -2.250888784052016, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.57439543416798, -14.293876869548797, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.623939837183393, -48.80879099309547, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 33.668215238937265, 29.40914748126875, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.514877752434, 15.406132719605623, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.18574399503922, 24.459144065716764, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.086288115518755, 8.319276335823766, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.99985851687006, 17.844600496585826, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.975070784868873, 19.05792441824783, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -42.78297172528205, 34.58579228725067, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -12.636223754747668, 24.93825276244046, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.098428270823575, -44.81795694877526, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.891320520838946, 6.428067768401327, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.33815077806801, 31.956759133002176, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -14.343973711278409, -46.82797771992877, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.426825480552779, 20.26580505402309, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.39924176558462, -20.427320402994866, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 23.466280754190947, 9.36018562656895, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.35850855936616, 13.781464820729262, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.73853075407713, -24.69405264760522, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.342396188264914, 42.67516295127247, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.194445758987463, -3.7989385610226947, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.826528713794026, -27.301739582654804, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.175961189464907, 14.454987143240672, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.7765644203799695, 46.30642958299338, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.3120399594152232, 33.50501882102983, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.81561964979849, 36.74555227721776, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.473268615994655, 10.663512168433996, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.187062333786066, 32.24626435437594, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.0786450160914, 6.329238907433663, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -14.971517016094111, -4.646148471951818, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.2881139520114, 2.3128157157611184, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.751595472036275, 31.574076251549844, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.793287907716248, 8.978796524907025, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.353184033402485, -12.39818822993093, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.146422720349264, 46.8722456311278, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.96531949505052, -42.5819161513552, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -32.620941398003396, 13.68717737803997, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.958756073328964, 34.64968261009167, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.696408026522647, 11.083051418510607, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -27.30190393058885, -16.53248401258756, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.9225631346589935, 2.522643200280953, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.62561592007719, -42.15163991593984, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 19.295454344310947, 9.596002326173014, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.472439441643246, 39.14276213377339, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -17.046690272907085, 20.70523808740927, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 0.5541518284011531, 0.3783619090445427, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -10.339968103340965, -26.2528970506188, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.904063026048156, -46.33204399713058, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.8943703448779, -37.30046748470832, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.3196150937132103, 36.80534993780946, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 18.50503933403196, 33.22955302913917, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.333357864853117, -25.328717023956244, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.531503689824476, 38.6031580372411, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -37.166649191739424, 3.9063301709261395, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.775537783275276, 2.8886684478251183, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 6.589960743987277, 46.610711995757036, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 14.721783800769941, -49.50204986080975, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.475045061733965, 5.60152107387173, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 44.85135449111532, 47.308003416532806, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.64258783568131, 1.9866406001916914, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.67898823992529, 3.1642403208005803, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.553341684416342, 3.9233947652346473, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.646983734604859, -40.03466431916823, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.732011792302075, -30.114467561280406, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -40.6453998058748, -27.38014020041672, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.069915105803034, 2.5492390300322825, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 0.9409119404719917, 33.91109848399472, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -9.228774040245312, -32.155245773559045, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.981334602562221, 28.48383741204521, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.40745797581141, 45.19448594390823, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.754654095645748, 30.684479147718502, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.064583600091808, -18.089766767625306, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.299950879556214, -39.76858985537932, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.974528546906924, 25.831878320267123, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -31.88612827058543, -35.693002750247956, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.743716116984075, -8.689975695812137, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.05954108500865, -27.78098763157017, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.51316559704869, -6.003856935230978, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.1179037147785, 34.97513787468427, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -38.786412744509676, -15.368605381302132, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.32307324420402, -11.731251991796924, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -21.765221474060567, 3.8696812702663266, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -19.0350063682385, 29.065465895502072, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.85146726172215, 4.023819623624391, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.48750063487745, -0.4203331397291805, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 6.570888193623169, 31.67736832243053, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.780326375713798, 34.72854199657374, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.41684425593294, -19.28053810972716, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.227546860077933, 0.38845444995718736, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -31.639572797316546, -41.367760468856375, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.76694249070181, -21.7751685513621, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.98127115572906, 26.737979111879806, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.7154261106459927, 23.238097704069325, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.392780102169198, -6.9138461316956565, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.303202518783131, 39.339939882296406, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 23.082875372208278, 4.736587530296667, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 41.73492929676421, -21.720314738196066, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 34.891527979771375, 27.01322772946697, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.2962227752117315, 6.490517929021578, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.430936014543164, 28.22350511887466, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.4557842336282434, -23.38495936433918, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.0734199097387, 33.38651612650108, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.837801581941484, -34.90951354268634, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -35.59380131267258, -20.298496227029858, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.6689653134791556, 20.182950272843136, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.602892729651245, 21.811800351140896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.676762432955456, 24.715972442789624, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.106691909847271, 17.88873551433121, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.760837696966675, -8.62335583123275, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.205093985459115, 47.683660839493555, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.366490077139233, -33.675944558158676, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.58410176405992, -41.433861243254725, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.378202100391171, -28.828772568951152, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.349623610457996, 31.373706036645554, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.628815328255385, -31.511242049766423, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -42.330733696667735, 42.28067362890844, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.001135348140814, 12.805390520319946, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.289100702750574, 6.405084545227922, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 39.929186304873525, 7.8636137019836525, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.7031478114273355, 46.84600738459863, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.936299298424146, 35.22958953813513, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.656453863556848, 45.089677998490686, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.62590787091417, 17.398626801782726, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.116746775324387, -19.640364914670656, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.63055296163098, 5.683470110731804, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -45.70886027302879, 9.214748417149401, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.499784486020886, -15.034537319621762, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.416266889890736, -36.2112941633312, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.56455849326631, 42.3998806971009, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.94949337802096, 1.481013437791546, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -36.37584190737762, -5.285958324274695, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.999411582542084, 35.089414768127945, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.340191871670726, -17.441575298566292, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.914022379881686, 8.76824797743516, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.32508648234508, -19.01107659744909, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.05757144964784, -42.26495456396198, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.206994191437055, 37.03843674427915, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.852909550745665, 36.85116267151285, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -38.459976446710286, 12.089173565882795, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.055633065670683, 33.19903350611719, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15.140921630449668, -35.10342987131733, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.43191572287067, -11.922267278862655, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.308011946201784, -10.791277646152551, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -45.41432290348024, -37.60306206478478, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.65515186532629, -20.822651613047043, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.880999182092403, -17.602480172791218, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -31.020551345793336, -4.2491253324769644, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.62470032841492, -28.60288870004068, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.028425443280419, -44.620628230315916, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.68804689259443, -44.78955393141557, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.413058476023139, -49.03047769326325, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.74255800852937, 5.338202711462571, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.02150806988631, 42.98304172980683, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -7.268040625949482, -25.835588455495895, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 33.67556386269639, 19.55798979812977, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.401848165711442, -5.976835405732572, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -23.662016664846504, 8.435353720629493, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.31520912487048, -39.31647202391079, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.89550422307369, -13.526399141264477, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.7813162311890665, 7.4319560043897965, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 47.20147754465878, 34.11675016091602, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -19.001955537088207, 6.994135569586078, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.0388211358318244, 29.695619736410038, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.848591730556244, 30.175672587466007, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.889001152067749, 48.093693306142036, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.283533129203242, -41.68315672368135, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.449438259046033, -0.6208146802210166, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.65210333504069, 25.806444905328284, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -21.163687446763518, 11.057207890371032, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.667336219935912, 13.304430314272821, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.793467165825646, 27.70066434233702, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 47.5388646756892, 9.308369318488666, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.74772967200881, -19.072606286360852, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -40.803126669735306, 36.706148989738786, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -10.609231991997412, 43.86618841030325, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.30119442866491, 42.598116615135126, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.991838642954775, -10.059769865355307, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.901447364175695, -30.0641721548879, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.43673829089876, -33.94662041983305, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.38145953630465, -9.265213204894174, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.69105531839736, -14.428256526142121, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.29447361055744, -20.840499665211865, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -10.2107915253276, 26.418129785231102, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.70131061086454, 14.636451882312954, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.21898875207372, 21.95728929508798, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.520593533767226, 45.6787145612465, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.03451886687368, -4.260843713125254, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.47136164610584, -1.037394853475604, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.399868603384945, -30.813382851133753, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.679965444337043, -25.299038399574584, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -35.07800233401157, -45.254661383683256, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.003327834289053, -40.86953881314966, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.153020178128088, 30.612366618001772, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.288321766766675, 34.91385597514862, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 47.76415627485777, 28.463521945235204, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.60947242166637, 3.87130393479309, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.84419751072771, 35.44397742612835, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.086725512832757, -29.467355020834816, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.152139242669918, 15.316227912112957, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.7026956780000972, 26.67862265568004, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.11595562953856, 49.665564305743935, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 34.216366503246846, 27.7496328663172, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.71167817345687, -27.336846000179065, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -45.81148857169414, 49.04168490770269, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.62216552159574, -42.84901566354107, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 6.733818142793659, -37.85430932834201, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.658330429527005, 10.464671173371109, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.477711901728568, -11.510453580921599, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -14.281375401154548, -1.0178741242260685, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.183907786923342, -15.867961314816867, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.520588054814866, -16.613379834611038, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 18.83288750768952, 48.91415408902444, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 47.63687479764152, 0.5281269277044061, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.959161975745793, -10.503782264715376, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.76281783853613, -43.65321985952872, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.949743395624495, -35.164454220300286, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.79279258842551, -38.349743436724836, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.73933150390699, 11.468151197074896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 34.386017316771444, 15.267758283062285, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -36.97750036761202, 8.460404067419638, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.94664967564637, -46.69816098856221, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -19.735815901426918, 22.230773664998303, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.190144233391152, 17.3992161708332, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.15710572508533, 0.8521180663496821, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.72710071587996, 27.55635389694897, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.170018925629883, 26.706121183370833, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.661531773982446, -24.540062346537027, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 41.95282032950425, 10.817589275535198, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -32.4815216036868, 30.062547158941854, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.37666266342459, -13.78766922739105, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.71463915225321, 47.205406051378596, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1.9727545055303821, -29.93402050093404, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.448490430213994, 35.80716878832078, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.43933152052681, 22.259230167673326, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.547542695861296, -44.651697191049806, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -43.633510543602, -8.859189364139361, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 13.31983467268185, 49.00276532099524, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 39.24510975774642, 5.091302228214545, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.6340457274221833, -20.85005431495155, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.02488085727113, 12.406020592353741, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.8393449592956301, -7.414574294506714, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.419378542014954, 40.94191890194057, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.728162223777048, 11.356165798628638, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -9.195697615268813, 5.474600049798049, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.990870258780994, 36.353730104118156, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.638922840433302, -37.02313576531293, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.85509418530463, 13.424363576797063, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.125611335400059, 8.853188604716756, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.046239223226358, 45.50720634831844, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.62027932968851, 44.86136885861076, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -38.73286022149067, 17.661922976712276, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -35.73990459058061, -26.232640220398977, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.866190940119687, -2.8310749898071705, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.595009241839612, -24.326574697269223, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.69701099104288, 8.760034346255232, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.33134327304251, 45.34206821402218, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.6056941579847, -3.4972492674567164, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.216314695708114, -36.01317555391705, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.17197889462755, -32.904054518003974, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.4867129946595, 44.19946179810654, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.088053587533807, 18.311833348666752, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -37.33675339224685, -46.865208051697735, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.331674380322557, -28.488021256507494, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.269123633950535, -46.072406280932185, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15.559540860234804, -20.85118302128501, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft1).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        ClearPedTasks(pilot1)
        Wait(45000)
        SetEntityHealth(aircraft1, 0)
        SetEntityHealth(pilot1, 0)
        NetworkExplodeVehicle(aircraft1, true, false, false)
        RemoveBlip(blip1)
      end)
      end
      if (x-30)<GetEntityCoords(aircraft2).x and GetEntityCoords(aircraft2).x<(x+30) and (y-30)<GetEntityCoords(aircraft2).y and GetEntityCoords(aircraft2).y<(y+30) and not isAttack2Done then
        isAttack2Done = true
        Citizen.CreateThread(function()
        print("the second aircraft is going down in 15 seconds")
        if not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) then
          RequestWeaponAsset(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), 31, 0)
          while not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) do
            Wait(0)
          end
        end
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.607989653631648, 117.82651239975577, 0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 50.75179010580814, 172.83334274706056, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -143.76240751917618, -47.81593970325471, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -134.77678949151192, 87.668040132532, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -50.34400007024891, -150.46813299962565, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -80.42656455869928, 20.371406649783466, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 159.57262867082207, -39.10359513379956, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -118.6719017832105, -182.89793699174635, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -64.67034711290529, -190.5703382325625, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -83.50651942362816, -90.41476234377865, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.23960384960361, -139.9689662730636, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -144.2392267780246, 166.44411400912293, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -88.09320855318236, -147.98442014336217, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.276328972866594, 169.21818101193463, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 172.08454612396613, 76.26288238902985, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -125.55857508089218, -181.70478624310437, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.13791182683036, -86.16959934804652, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 64.11304405734404, -126.49582410589852, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 72.50676614275422, 52.040578327156425, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 89.49772062505055, 48.76367999935357, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.105794527990184, 156.8080851486953, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 117.81208076923502, 140.83265985879044, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -94.85220463497689, 27.617780334434627, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.487660247305087, 67.58930379719192, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.542915539631565, -135.289351026852, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 144.8968676472357, -36.50876479164032, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 196.2787533967294, -171.62134481359158, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.35437394801929, 164.4899494793802, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.270665118331607, -39.70374540493529, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 84.08349812555018, 45.81055016194088, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 111.21212177748285, -121.98019222111378, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -17.10199609708036, 99.2890778152942, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 155.7743247275386, -124.52330927286124, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 67.15611808214427, -41.510418458117016, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 33.20535973901269, -72.6888601796914, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -67.43976369479003, 96.61539967255788, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.133891652383, 30.716791767679922, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -127.76578845518702, 38.05647026489848, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 156.18846397346226, 59.011184616658426, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -156.4070283938725, -43.38469271559876, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -145.45778694200055, 188.20534947838593, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -124.14695538597431, 82.44683867648872, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.389902189332958, 32.35918679916247, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -134.8962271242189, -20.55628987902719, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -115.63110419401863, -109.61763589632517, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -58.44635013022901, -187.961136345397, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 87.32017419850013, 89.31326404424844, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 119.06145442871275, -94.91767022485146, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -179.5813880562618, -41.80612035475502, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -30.434472537277998, 186.9657494061861, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.57623788338242, 83.10884373970708, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 172.96441233169188, -40.876593296346186, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -157.7177444014394, 189.30049950139224, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -60.76357493700823, 45.6517336919151, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 106.8692917183605, 140.7986031197164, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 88.78815659710027, 73.56892071788667, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -116.19499925417409, -51.24012377543127, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -125.72587794110086, 31.683814846202722, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 197.5783131147722, -30.541466882995735, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -173.79333401340426, 162.13039143793378, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 61.79811097977597, -81.48434045567586, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.6246257736100347, 101.96969184629738, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -104.6348892840349, -16.93147879180009, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 93.12513013628019, -144.51357793264276, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 112.52214323711529, 60.90121316567618, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.4429744162185898, -11.83379292665316, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 109.58195403529479, 46.657469039441054, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.08993656453296, 43.12999656151169, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 39.928798652855136, 108.90184801350289, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -115.77735175945492, 148.76919583157778, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -78.26811669738686, 46.06018879392951, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -189.37264924953416, 89.75311727640891, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -50.36588536641747, -164.87228833832336, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 113.83876545453218, 35.10306421432307, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -83.03487378342362, -171.29327728056631, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.277402751405447, 68.25350697636816, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -30.598888997863412, -123.60999851045193, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 129.90637170014628, -113.05130035987565, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -171.8674956598898, -92.6083822767975, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 23.426300210238793, -11.890801021800371, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.856150797376557, -174.23787042910044, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.94517961186108, 108.61000568542556, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -149.84694210892434, -15.052942206275588, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.02433068504334, -131.6426781669408, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.774746111340278, 15.346427568369052, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 31.867524609878302, -79.87448054150639, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -162.85466544352448, 98.31847371946827, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -129.96809427053728, -59.461209635783064, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 133.24857537725626, -118.44304846046361, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -17.100746957872303, -80.79257921853531, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.30360613525926, 96.30543059344711, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 6.067202486826943, 185.5920213798049, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 60.432520833787436, 136.40487894195957, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -194.03939829323951, 162.77129530788113, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 79.93456444952089, -18.4139359377358, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -161.04976713310862, -128.27121527784948, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -12.081354194800468, -158.85409515778866, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -86.43857962298523, -5.901901108454069, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 140.12115755059816, -198.85104189484775, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -156.57114688039462, 107.8748771363034, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.98195217798164, 186.30980634251745, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 157.79196876779213, -136.91457431496656, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 39.84257199718613, 109.90130549193617, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -86.32057289240925, 131.17886429213996, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -184.69369677995059, -76.63341167713736, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 188.81657858470157, 8.325201812351935, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 142.62474422835714, -101.30841975690129, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -60.1694566514567, -165.62132784521316, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 88.5480873712142, 147.75797157722073, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -114.31988664091853, -91.44768356286039, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.54112497671764, -142.79444843052477, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -147.79068395807258, -112.2283086186215, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -133.6903593609045, -98.17350830788058, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -92.14156626147371, 36.928578868942, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 101.69980259401336, 56.20639400161113, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -129.97983471624985, -195.33650707715935, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -84.50038356197166, 177.5316185937422, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -22.176964612821962, -184.9063588513361, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.733696962295596, -19.60307244958591, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 196.6532176215747, -4.376075921083185, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.941139394380684, -51.44812800670647, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -179.36333225904508, -37.22866774143486, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 67.37916729698537, 175.9152759964044, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 14.251260881007, 42.37918947874641, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.28188580925308, -19.75837513262428, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 114.34235738319404, 50.54170021278185, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.675753378868876, 133.2874364821734, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -184.68562651213267, -14.230357439826236, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -104.1850482382178, -144.67410247220351, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.53445717667347, 26.413197172003322, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.1830385718074, -84.45717016766628, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 174.8894810943707, -176.48307899394962, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -150.35080867338468, 9.715391959753447, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -97.24215848430202, -196.4892729242843, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 112.86435205205798, -23.924162578261758, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.327770291942898, -70.6072366342932, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -22.889805786201833, 25.21013990656371, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 130.36624973038, -135.77446519378452, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -111.30505308352178, -124.84415261427671, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -59.66951277693403, -156.8705054564952, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 146.92020763447033, 169.1715491791481, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 150.2206722870942, -148.19027826073733, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -120.87765646902733, -150.88891746018976, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -138.6959419556619, 195.9568599387941, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 169.1551637028648, 128.79478390404194, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -117.76731900897357, 53.76213698700721, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 150.28080061108938, 110.31324813002676, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 55.43402495521974, 48.36276765251864, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 151.9107746578185, -141.64205277321219, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 185.58305135135126, 86.34462459968245, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 82.50684630602532, 5.60853025535755, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 76.43918373601917, -144.39225043334199, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 167.03236194598298, -94.4475437819379, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -179.65646754150237, -126.30988996869854, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 2.8213197820776656, 49.018417254101735, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 104.4394562548102, 160.36071363439115, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.27004217416297, -136.77205067103182, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.516481877901356, -70.13883166665414, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -69.8265291652678, 177.7561181933475, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 194.11986452931177, -142.5428938310243, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 178.62252262811216, -133.18831219763325, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -194.9583134990749, -43.26541732784159, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -4.846471622251698, 2.505902573959588, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 44.25870890023526, -4.528312302682281, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 56.43936330281721, -12.559255813462926, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.12110047504413, -9.928256461476877, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.50632385946531, 113.812499185872, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 78.79617073246825, 20.672257068510817, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -95.91190318483632, -7.105268277883511, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 82.92004982833375, 180.43082747766323, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -68.92858308556464, -141.96268149531568, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -138.96122075737702, 191.18013848043898, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 51.076522204469484, 156.31242946402094, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.20174099112083, 42.0269523646854, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 191.33674192875407, 100.7537540340108, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.87953532477448, -163.6896769628567, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 123.25233062338708, 168.41434938187936, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -9.94537601200625, 159.52652211080354, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -95.02328135235132, -14.174014080426389, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.4472383715994965, 15.421510091466047, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -101.41770158271964, -27.30909658571025, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 14.616673513662818, -66.81762147772378, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 10.489881440706228, 68.22478687375798, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 158.95413174380133, 51.0068254788867, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -176.3337418566898, 101.78420823401825, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -182.6061664597192, -152.3035482717737, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 168.97387185163151, 190.14040888077668, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -199.4591675789901, 22.914527447587943, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -32.28096385186009, -172.26056799393012, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -144.0448089042925, -47.2299240467585, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 135.8194187230173, -0.734041180953227, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -149.7946008148685, -116.72479350979614, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.800542424661103, 36.18581870489922, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 117.482832298887, 197.71519061781842, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -40.151987816928, 171.53914190778661, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 186.3584727943655, 117.90375891326389, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 133.7340364348538, 199.2674403894349, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 138.15633451333653, 168.94464820615767, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -199.52530666936622, 17.73483852786225, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -127.27193216100528, -170.82679557467435, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -171.5986634383608, 29.18713485192947, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 60.410027934524635, 113.15611868652499, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -47.69033305002495, -4.3029860481127855, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 100.59625630958679, 72.06449878979227, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -128.12105465645533, -53.95959011184877, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.3557346302927158, 113.6173404885339, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.198317057915887, 60.1744252446326, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 2.808304385254786, -102.44609782089589, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 71.53806782989943, 83.44012960580133, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 178.9569930986616, 189.62823155209233, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 121.14473789942312, -38.767023555799426, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -21.638686321874104, -95.85569983843641, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 134.3958830053511, 68.14641746638355, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 160.01014980810248, -128.12066294098702, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -55.49177943017182, 31.45591507139116, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -156.9056084125396, -16.217526874260017, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -141.71189415637474, -197.79179962319768, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 84.81784894401505, 144.3340282705856, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 32.988491386886125, 15.474941992730606, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 145.63770423453485, -94.85481761749412, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -193.06021337169932, 87.64657821077807, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -136.10193894953255, 58.90656612851552, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -108.23751652041267, 36.21587690091212, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.576514143201024, -32.69884243826874, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 0.040839426612933494, 106.38057202268429, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.72530449233395, -175.975569880843, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 70.10415851808949, -29.6740271032549, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -32.37375348927739, 106.49772110621302, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -199.5989498298507, -167.65207602234932, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 165.61256223778153, -150.27671847276844, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 105.95309426576875, 135.4293018108262, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -51.263019897639424, 98.12302725410956, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -66.36690743518585, 163.57487044918048, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 156.89295896523242, 128.2006413754064, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 191.8657808419228, 75.4160177380185, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -119.65656778179704, -105.69545460215977, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.2274994028228434, 157.99538419761524, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 78.49644581251542, 165.5803390316697, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 79.79042533988832, -185.9276652121428, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.048420961031297, 161.8409433970636, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 105.82980243068229, -10.68732899649794, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -139.0365404751832, 100.07109117747444, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 190.3323233148316, -137.88256152257634, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -123.90837518211913, 139.8824480485806, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -60.264411752527906, 77.1094407952428, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 115.33705935255058, 112.72183420171808, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -53.79412867408524, -75.42051235366011, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.320497321083423, -78.67559917146741, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -22.819564175384414, 93.40734689217713, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 179.2152561444107, -96.50067931041582, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 183.89010093953155, -36.58532075377218, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.53765004843171, 198.14159192569144, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -162.97556577215795, -6.3670454041544815, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.42180999945512, 188.9362414202937, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -119.51964909754463, 173.36805808408366, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -165.4993358700117, 192.90870265754378, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 171.11792430257813, -183.67852422340218, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 144.75446980331935, 13.991939230460815, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.89915412870141, -182.09986043656204, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -9.703746489781196, -64.74298895488022, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.9032417522997775, 119.46336379366223, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -56.6224670594072, -60.27137169940613, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 115.1674607485078, 8.871929907599167, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.319148784328064, 93.53414110595217, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 198.52836805876476, 186.5299841304342, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -12.548852443721529, 8.804173512275526, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 2.412387080594584, 141.76049711640442, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 67.57613713593119, 173.17687127515526, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -199.91928324892234, -48.770298300767934, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 87.84507823115018, -49.43833694509118, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -139.15827305043712, 82.6498995208234, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -94.0216349838546, -38.939587560213596, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -173.06542288689906, 137.0581706348563, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 174.3051605321619, -78.94329138117769, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -155.0704603065812, 140.11802887816646, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 138.44526324206214, 196.50607070019834, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -45.36901825240466, -137.39753985750298, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 124.1827994048526, -189.08447697696317, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.953294663408315, 171.45359261947073, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -115.91299332043104, 118.56473860182221, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 57.901100437343985, -26.9222414703263, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -155.71907384959934, -0.5706453831550959, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 164.5471312655519, 47.87140904851296, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.36403868175029, -159.76894364236432, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.740828178414887, -155.18133126863523, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 185.02018697006218, -30.078013390301464, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.16489813690043, 38.897493624505046, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -100.611412717228, 156.70996904103748, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.32508883842982, 91.25189449836269, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 59.55279446851449, 164.38073928622208, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 80.9845181002573, 22.585480658337787, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 103.4890276105692, -82.42973879796978, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 65.06685572094744, 93.96292501457238, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -123.62776458516163, -155.96721947671233, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 90.85397519625369, 2.7287781391462147, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -80.35457368926836, -195.00698041093824, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 156.37644937293462, -161.36578225772712, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 50.79044838764918, -56.77807631684743, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 70.44429979130422, -76.86772570376144, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -110.29951101437501, 130.46026392523223, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -36.61060855810999, 170.30790189649957, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -100.0173461119947, 38.56397853432131, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.431309187880373, -87.65068981193645, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -196.0956917592174, 80.89289895176606, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 167.6845212811613, -70.76402547340894, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -139.48062715201542, 112.52112248582895, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 60.769176217325594, -173.82060403924743, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.960076134785339, 40.58126900036169, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 18.33860829219782, -61.83063218346706, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 104.42514139288681, 109.54399895194804, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 171.0059907741231, 97.78818516049937, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 115.40498929085334, 187.34664524973618, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 76.35967687364315, 110.86412014823796, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 77.99543841679144, -189.00127261038602, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 75.66183038161567, 19.072108679533073, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.125075180085588, -137.31861945231748, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -181.92294081998932, -103.32361548967191, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 140.93297349307267, 18.166646112985063, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -161.87073646194239, -115.6027957527935, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -50.537760208441796, -65.0467231103292, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -58.73048916120973, -119.09775506820017, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.05425549019364, -134.79023604905132, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 144.00944971835852, -106.74827207684234, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -54.41722851614247, -190.41283892683032, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -14.460942087133162, -85.94331209205671, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.823258473912091, -45.95436469414017, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1.6737626164404844, 162.24413873798662, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.806456546559673, 198.9866519272618, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -73.60867248633758, 87.79087458690826, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 6.99666208002165, 119.21806391711316, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 164.64035961207566, 144.59577790792918, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 159.23695700080023, 29.38955090429829, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 139.7361303936945, -15.618989583805387, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 87.11968011046123, 186.55899604821028, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 123.47324099206335, -83.65353836303495, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -50.063771433641875, 82.91705230269582, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 59.25237080574783, 161.49273217898246, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.381768437900575, -48.53335117110652, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.39197880431479, -97.10216734251105, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -65.19644138134993, -65.26311510091654, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -102.36962842789586, -161.19852976595962, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 174.46565489338158, -165.28135868991524, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -66.43070397494239, -141.29400488942184, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 196.42442727084264, -5.89922025475974, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.97371851678102, -98.13433763015149, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 167.74334112662083, -59.76878521142817, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -183.3934957768834, -79.59138782924595, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -131.48684657226255, 19.896015439820133, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -97.49584820838066, -52.77848938179659, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -155.61275476115316, -54.51151685710505, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -37.88375140643234, 59.24461442244154, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -145.82069640940995, -133.0925190011571, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 14.365219102875415, -6.92797353020697, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.40684369744066, 124.99348912516295, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 104.65334502957182, 112.14910422422611, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -85.6412049541209, 143.69475130827504, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -155.93985732490012, 100.26113890549144, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 152.83719190878972, 115.73237336271119, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 175.3649226707216, -133.1001766571332, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.81164959541758, 25.49731340434721, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -76.85260308075817, 173.31713256152642, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 68.75366305505776, -171.25870841937507, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -126.14689640960768, -80.3856771027622, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -118.30549049310122, -84.79542242766087, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -57.40846862463974, -128.0886579168265, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 174.46483945488671, 132.09590499501402, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.376394665340456, 74.47333937086987, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 168.8601781012454, 149.8947868440581, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.209585827109493, -160.49405998711944, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.64523089638061, 38.67335150930958, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -157.32568989439937, 114.87135510500508, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 177.02018075334465, -75.4886279504488, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 142.82163056827972, -86.70039158382343, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -103.99827131649698, -13.955853913408504, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -127.55928259300447, 88.70248757825898, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1.6117608281675189, 138.50903154466678, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -173.91909546916605, -51.0761695814212, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -62.366821136951614, 127.91419534324575, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.915401102606893, 178.6329256834314, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -12.455746099363012, 16.46781166747334, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.61141066301337, 8.810124318633939, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -141.59006905036807, -41.75532879672767, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -136.390260449937, -63.950700702968106, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.795638178071272, -170.41604972147059, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -37.5632128688018, 43.26106403857341, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 198.48810171280437, 71.51697708307029, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -170.13786549296395, 42.890924801679716, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -118.91434678349981, 186.97015659890468, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -153.54434372209897, 193.22443971556487, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -87.42873971936405, -163.25779987125168, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 161.7437892247071, -11.834661671967865, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 137.8783126409239, -131.02818396319282, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1.6580867711248857, -100.64549130430481, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.33635602871618, 59.118966094194036, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 86.06879894920283, 26.810859999111614, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.690947317003634, -132.2473542657611, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.11600984807117, -105.71279558787501, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -108.76895725797101, -124.55281067205834, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -151.34993303169387, -24.883674999851024, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -124.32427927978608, 176.97964568382218, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -120.35958640981556, -103.51736006797552, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.357298838532444, 29.303728984162632, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -32.3969507109033, -16.268272772275253, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -190.83127239875506, 7.283495055647904, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -177.24950635333886, -7.009750182364257, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -66.96605210251488, -102.314785732639, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.526739582909585, -109.04746344307091, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.536349364372853, -124.84688067929756, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.598839631611156, 192.41476968954484, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 155.62164193542998, -18.524624020154505, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.32629035816410124, 30.46886809695718, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 186.7165507815068, 77.38235839265215, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -166.40132113009128, 181.83629814537926, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.894314804826024, -92.34007664097692, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.19400869944542, -109.35377283844889, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -47.371541965729506, -127.99277353743202, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 152.42514914489772, 16.120285147128044, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 188.68568253597243, 147.58689735701518, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -160.55186800880898, 150.91522464981617, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.50669858957201, -39.19110894152311, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -115.3799015422507, -21.3466815966367, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -199.21337273387581, -110.94215914638374, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 166.84495339902688, 124.37663773148459, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -19.22704765792193, 84.8899866676871, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -152.4582934953309, 133.0737749265582, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 63.29330950839366, 16.426932329646945, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 172.12619749229043, -164.25172499912952, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.758632428339325, -47.6435236197795, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.621561262308035, 99.77022167556741, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -149.22094122759313, 79.19832256523635, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -109.0920155129038, 73.98014804133749, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -58.88348456476945, -188.77422020843528, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 149.56239356298323, 40.81472098497025, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.618971303645935, 36.850029508668484, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -163.1661099006305, -22.456115794765367, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 88.99199433478557, -155.7000300985714, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.1244558190933, -127.26236216338896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 137.75936464317374, 17.723986297299177, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.6698971071382402, 134.7284853900601, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 130.65116413558613, 103.40355654703038, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -192.689183215296, 176.28943097748407, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 65.07951200891489, 103.18703776370013, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.794217324917497, 11.080232024311783, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 122.77885805461963, 195.7785511702383, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 121.16582725917996, -79.42301756764573, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.222629203428795, -83.4454505874507, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 102.8842732675674, 189.3965491819971, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 55.043823900601126, -76.62608236572026, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -182.53871745709745, 92.09933386417255, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -155.7033033357663, 19.514586905282897, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.579449104977584, -67.49808957878321, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -62.29169645043885, 118.63056657832836, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 166.8634200311085, -185.96515794150338, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 75.89576621778305, 7.9858247661702535, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 185.62259066853545, -12.038182290074673, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.73213741805918, 142.80973388425951, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.831423378650527, 142.8246553083997, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.1983455835005, 67.92159585961707, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 185.2723442114117, -57.18955563771482, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 153.18558176154403, -138.1923505585786, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -137.060170303772, 103.32063467906876, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -127.3824002967662, -68.27711929425931, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 108.38558847953763, -186.09846078310045, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 88.17208011122908, -158.72995145532525, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -116.60972389616717, 35.97948431029448, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.7953781913914213, 112.8355018786408, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 125.29835289580564, 13.322520065699365, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 113.17453611506406, 47.64611139449784, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 87.8665396096757, 17.825339389054648, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.22609927699233, -150.57459495430754, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -121.48706256929984, 61.84008300058119, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -153.05660694634975, 105.76867869326625, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 60.35056103256676, 6.994837336940407, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -160.29969411505596, 44.63638294448006, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 148.48161554193675, 180.49140211544037, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -62.6424158781324, 74.1642371699883, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -144.8289462655017, -86.59711341408973, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.429781957919118, 173.40017623923006, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 185.33618452451145, 175.7686562397642, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -148.30585336865863, 126.37517999341945, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.38325166978413, 181.47807036790243, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 53.729904520897264, 79.0085779387364, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 68.86174696536526, -92.88375852224624, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.32417348521099143, -128.03592446540983, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -4.0707189466561715, 86.66303904257786, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -139.80609311253954, 147.08216650199847, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 167.87525759535464, 132.1059837633439, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 111.17774728045431, 183.71596329695024, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 136.70457254117645, -70.84983846633088, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -198.6755136331284, 115.50220819271377, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.49741517354235, 167.82818643913185, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 52.37931004050321, 51.69082147986313, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -69.59023707771888, -146.28441609568517, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -158.71229396818353, -44.88902605251192, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -196.96856562349592, 78.21097100417651, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 137.65901706840617, 3.3912362116902557, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 0.2030354590458785, -167.27432346933693, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 183.90753756236816, -166.71141625773805, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -75.84705709132288, -24.890093708410177, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 115.68844727300443, 5.570495787592932, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 143.1037831860322, 91.96917350677668, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -164.76320229261194, 174.4605382855948, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.58495856635892, -111.6692995829398, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 192.97485791482111, 91.04647504241959, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 145.49586045966194, -192.11915080971227, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -168.5649348892669, -155.08604177295115, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 90.22557436362293, -20.972809581865363, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 50.85782289732634, -173.2493704111028, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.828869463985768, -20.295866741680697, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -86.49126937406078, 9.122214491009117, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 89.06867375276875, -82.66616641296895, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -144.13479245186664, -77.13744408164575, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.491398663015644, 31.963196033694345, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -180.69929636610897, 128.2596028311863, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 33.60451660621217, -117.72754543421638, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 138.75270957945833, -111.47467568419194, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 164.04302256236178, -99.71839587655182, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -67.4092770289289, -95.15236939194011, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -94.18217329487379, 25.111886854057275, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -63.690233920029925, 65.48386301239412, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -196.76711248554506, -188.95109642754562, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.847749678189928, -79.60022234451827, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.778175108396823, -175.2308162148637, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 103.78465116287288, 60.21871792024126, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 0.7354570293827578, -65.77217058377948, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.819886594919751, -44.53045103651806, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -188.58031630992838, 84.51856791291385, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 134.59898650449816, -52.60129471319459, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -136.71161602678347, 19.9450854498412, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -54.52341752164838, -54.954734273715815, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 94.51845834720345, 9.79694519581625, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -98.73540584332989, -63.63249432814655, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.4466295897411, -143.2849986882843, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 198.4049411055852, -172.71429082545103, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -143.64580722833898, -149.9618908246071, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -155.6797922076135, 94.41140772362769, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -161.85977353683228, 4.516442275982683, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -72.67698781014957, 187.8980559029551, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 164.1701342951789, 4.2145468934513985, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.27018446714521, -190.62046033046897, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -45.802195225860316, 155.24341956296936, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 154.4654063990989, 24.22405130451014, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 145.5283260667561, -63.302815907974264, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -156.27392898239628, -136.35132909883458, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -106.10607686843548, 48.014380387835956, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -50.08292059705121, -67.57885452370289, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 196.9560662626252, -155.26592488231063, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 50.64494563090065, -65.7483254679293, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 169.57965874539963, 105.11756749792127, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 129.18462686410805, 38.7587740409125, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -74.65589236099072, -107.11689734049423, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 199.53121835294834, 65.18540867123761, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.617144916029645, -30.162211798998754, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 118.04732019056718, 90.17864006720319, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -169.4130968292547, -21.62323206084099, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -115.80877743292416, -119.96932300581244, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.267694736925137, 133.62997521269665, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 124.05231365546845, -112.36723516672004, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -65.34545713080587, 127.20318919439322, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 61.67477174885346, -100.08041576004416, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 193.13748513467078, -72.79651321596504, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -50.91801399759336, -21.449931241527224, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 61.38674887949077, -153.7708329144457, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.616439782193368, 146.9656708452014, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -154.87395868622838, 2.568089588416541, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -139.77979383542367, -131.01265247349556, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -118.79056974168589, -158.85424179072737, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 63.242564970453685, -23.313374747874263, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -108.04093075967262, -69.24727234326838, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -17.060785501621723, -59.823001257897886, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -72.30646303397339, 54.68455380590376, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -126.35422278343151, -121.1600946401062, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 83.33557623383152, 95.75630255025177, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -126.02814034589403, -57.86532848011319, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -176.15409341954768, 129.81081596410976, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.39591779754056, -112.36929256969847, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -84.6584094602137, 127.31717963508578, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -43.83607223422149, 46.30866989854735, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.12333211526504, -156.21527891207876, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 119.69604163498566, -90.26424427166387, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.09177901892238, 162.15129165995342, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -106.91994324783593, 166.61424226918572, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -64.51577146106649, 99.31310176305202, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -132.1642061375723, -192.7128718153458, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.038977391963527, -25.358434578867673, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 122.9492811409414, 163.46247106302087, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -88.92688369135647, -0.62685589906053, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 180.67399340385606, 105.48623974041442, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -182.30660993781822, -168.29398673018795, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -23.656443814681523, -22.00152318586896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -157.77096928129401, -46.107398966876104, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -161.24954627897995, 84.00387840105648, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 195.78006938253293, 15.006624102286366, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.644828095785556, 6.517432214886043, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -107.90430141163199, -28.63403211204752, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -152.41350190464595, 128.78888179374295, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -134.78935213477126, 116.84543177062734, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -108.7425496712487, 126.19501940433162, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 112.15786675320602, 103.42506332571864, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -97.45358373332067, 148.10987091763516, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 83.34642210999075, 179.63776054131282, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.369129054375321, -140.05882914462535, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 175.60937108505829, 61.65199987509499, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1.1385818071468918, 61.19519202485782, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.14015791860447, -142.92748823651243, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 131.155928593346, 10.19753921066453, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 71.57230194439447, 108.36970394442096, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -67.77933885340167, -2.3957764934240515, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -161.17371986389355, -144.17073497341198, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.1360383047060623, -61.31238783631261, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 160.76093578324492, 93.111082971049, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -163.2401826008433, -72.10922333516993, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -78.40838244875056, 151.90537360760175, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 72.38922486305341, 62.93862485888263, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.742355020583148, 105.8236154167858, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 56.47850539592173, 82.9539863793511, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.444985867236625, -81.64083709029757, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -154.59421767820317, 166.7774265635831, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -145.434437614251, -192.759755299199, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -167.77702091491113, -153.04851192479924, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -124.31163773697165, 44.13243756774622, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 121.4372317183246, 108.59312485723409, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 142.66171957893982, -50.598159227236835, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 184.12524744857103, -76.5166181582997, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.003240610962507, -160.39796288192355, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -97.60263731357304, 115.44501172965242, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -167.35970617991313, 143.30466644522585, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 51.37428651080293, 140.51733736490536, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -111.21930962462505, -33.78115078028915, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -172.30327759373944, 106.26754331608038, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -133.751271259168, -67.8062590484488, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -127.95710593964918, 4.0244201990995805, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -149.79480777900227, -40.47013594738908, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -170.98112551456336, -179.99494632062334, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -174.25784611671543, 149.94406186319907, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 2.181593070295662, -98.66803145529542, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 127.97975294786106, 165.1450648752956, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -27.31869884157527, 74.38201295594942, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -168.95110172082576, -123.8753877828895, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 143.4434294210891, 92.05060871358918, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 89.96863910899044, 174.23882814331267, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.02228958279949, 154.13484127061884, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 13.261800738389354, 79.68306837996568, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -143.7683573324909, -30.29575485699408, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -14.868393359232016, 182.143739766133, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 132.75335312376396, -127.5428562913774, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 137.6398809263052, 152.85276112908014, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 100.30628582886321, -148.08534414486775, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 96.38187380632361, 43.551491611858864, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 114.5689382892872, -63.33622083461438, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 55.45559404618726, -1.0965382071702834, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 143.92182030038532, -36.482400912925414, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.29717652774269, -180.42297787505606, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -43.36976046113668, 177.65868398884095, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.047436808628106064, -134.8733709006881, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -55.594858574579746, 173.70647139127504, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.716965994307685, -40.887442827558374, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 151.03182904933644, 169.85546726642474, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.8554147737799, -165.94716394561647, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.28499386297125, 179.21612633553198, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -161.3149603701416, 41.52471850393448, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 149.3208588857086, -34.503191904364, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -122.46259983352303, 124.74303610393997, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -106.6963267835743, -111.96505056981954, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -184.09242417942744, 13.278118627119909, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -185.93323072358817, 124.27681430987985, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -139.42865642394315, 111.889240100182, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -95.48366697695991, -41.474553634075306, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -137.58115742446302, 13.377156167993746, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.81047304147023, -68.53006921430023, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 171.4023904534601, 161.70727907654873, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -86.88427075303292, -124.56675986839275, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -80.08874178446695, -195.13165357178377, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -69.27269023113053, -166.18000405937892, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -17.294446216231478, -78.23024069428658, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.585281117710053, 59.14131885153796, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 175.37149738618103, 84.52035617988454, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 195.72511446764418, 186.70674366395554, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 180.12976632659985, 52.83628322576925, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 120.66207463395804, 192.8124088577186, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -139.6978807761542, 65.36119047598962, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.120801076111263, 110.98180448484376, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 58.55308617720115, -81.0079062762461, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 125.20100120965552, 187.51680610509692, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 65.80789059580061, -130.04682137645665, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 69.97586344030972, -45.917802403334576, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -91.19499046033911, -27.541281823511355, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -181.4699241097611, -2.433866246933121, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -36.2099618029352, 85.98468988212193, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -7.726159397181476, 27.57054725531819, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 18.606015159482496, -128.77685073350358, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 101.5301518710328, 146.1111677699896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 15.832558268796248, 191.991504110789, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.05225399189219, 88.73565373687296, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -163.34915384417047, -97.15047092214809, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 93.77209848213015, -187.04908015210958, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -113.84348533722061, 49.615130169248914, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 55.59746159967435, 89.87625990729855, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 82.16036958232387, 67.92691628576256, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 185.41674655561025, 120.34332834560155, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.769925245935895, -192.40281740964218, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 102.41479387742807, -18.717871971819818, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -83.20534712773303, -194.31475939602166, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -194.5317413140403, -149.03474494940355, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -157.42297193349975, 166.36176388674187, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -70.14715746932973, -160.2225424050862, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 197.2627060414685, -145.59522855338446, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 184.6223309116331, 101.33958565141077, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -81.97581694660795, -138.20498569755222, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -107.47844168921768, -189.138749369119, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -142.76601526064292, 52.10859835162927, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 80.4975182196201, 191.53690675240026, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -137.01018730277485, 45.907905316617985, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 59.06926848545612, -108.11077088694265, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 193.93454248144133, -64.93027494598141, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -10.789245088328585, -156.40926359876255, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.74206944666997, 180.43948048788536, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 162.75341953898365, -164.31312940986533, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 103.04396579613311, -100.264082135146, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -91.4086484260701, -161.80277380673118, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -47.08597594187091, -1.3456316201541938, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 80.2820974394745, -93.6874872890537, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 107.46745238311739, 102.78626687556134, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -119.07637971564958, -29.917381480077665, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -116.09897787069627, -170.0662561297409, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 167.4400133368537, 165.48546856591014, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.202455249188233, -89.24197167743654, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -112.57336640994487, 178.2275682174208, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 179.60833296272352, 125.46653825934007, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -54.05643009011749, -15.125653150165164, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -45.122258576921496, 153.5391412944543, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15.36807939592012, 197.34952232916817, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 72.67541217280682, -112.3159628685438, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 155.35703221812005, -136.67767134278142, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 117.20507321408391, 112.12234039348337, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 169.8160032410086, 189.58305485348478, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -89.26466838726827, -114.11311339149267, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -83.65506129590034, 123.5077274264679, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.14113430777476, 187.54780806362615, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -84.81101035120497, 147.84853608943962, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 84.57300088118416, 2.075463019479514, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 145.61919910623578, 73.70248772499588, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.6919472767685, -193.11384248760316, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.68365418937762, -78.91030070960767, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 151.80930487407426, 145.2341416684111, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 135.9834636161489, 154.90007050888295, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -161.8914749218477, -49.06453369315855, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -197.0067360412566, 70.17621961698097, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.120336158015988, 41.55773174872763, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -32.81394113583218, 167.1586019869947, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -180.9322575032158, -115.92459765679541, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 148.65121560589785, 127.84605435647674, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -12.746789292376974, -150.6148595721014, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -131.51657637830692, -47.650562015352364, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -51.49851985146972, -146.01642717909823, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.490920625608794, 71.56125619257648, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -14.424788117831696, -84.55784332695401, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 144.22664590911776, 39.72811643872376, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.6714799502676101, -136.21827397115896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 62.92743679504423, -111.25937727287453, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.694511483934264, 158.48143032062677, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 95.82706790268833, 130.7290058505326, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -190.3284932250183, 141.6270929641085, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -158.21157835587798, -9.540688764174831, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 158.91072638783015, -67.3382385583538, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 177.02438600204243, 82.63044509121266, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 198.31591725391445, -44.327979126632215, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -157.79330590596976, -150.45016308597638, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 88.14213540766814, -49.318228590934154, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -167.50070783679644, 135.4212342992301, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -7.569611969231175, -149.32410673486584, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.962271091219407, 151.88453262654525, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 127.73630497814548, 123.5404907073688, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 140.35543816152466, 54.11632593161153, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -73.30033825782527, -60.92742191222794, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 169.71809146294302, 182.48175774740173, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 191.62172989072835, -4.123809207380901, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 198.60393939161813, 86.1131094160382, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 70.62390107671018, -115.65962962311494, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 93.70051432573297, -99.93404258187883, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.568184600415805, 166.51145175958567, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -9.470513144441384, -186.10184346795523, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 88.57215183520859, -73.55569117734098, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -124.69126540770395, 30.963262766731958, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 182.22434848509357, -155.41447279763202, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -169.80925049073392, -110.08068342204194, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 18.82697843988828, 180.74757412053054, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -92.92253135903036, -87.25280589846881, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -105.39111062080798, -105.39430661571777, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.705164073074627, -178.9621498701248, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 119.06978194415716, 22.8475003823834, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.21042349462974, -147.08111539444423, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 79.82316363630079, 17.19293644453802, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -102.14331854660213, -101.36888307552141, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 184.3112003623233, -171.11331424710147, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -154.6076783879122, 141.48007906223194, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 134.47409215617893, -7.357524449485709, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -73.01567392054, -35.907580367909105, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 161.15473688778206, 15.89913029425469, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 136.31452750159107, -112.05259983570483, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft2).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        Wait(45000)
        SetEntityHealth(aircraft2, 0)
        SetEntityHealth(pilot2, 0)
        NetworkExplodeVehicle(aircraft2, true, false, false)
        RemoveBlip(blip2)
      end)
      end
      if (x-30)<GetEntityCoords(aircraft3).x and GetEntityCoords(aircraft3).x<(x+30) and (y-30)<GetEntityCoords(aircraft3).y and GetEntityCoords(aircraft3).y<(y+30) and not isAttack3Done then
        isAttack3Done=true
        Citizen.CreateThread(function()
        print("the third aircraft is going down in 15 seconds")
        if not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) then
          RequestWeaponAsset(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), 31, 0)
          while not HasWeaponAssetLoaded(GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")) do
            Wait(0)
          end
        end
        local offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 33.08133134541285, 12.430374496228765, 0)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.245176355694156, 76.30028912391879, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -68.81076718870264, -48.690844501481365, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 44.62732936999223, -33.163735382626044, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.754709848195475, -83.4540898393416, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -36.81803061404639, -58.70547262644479, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -64.78031755559627, -8.331143845492761, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.115555739707531, -96.20511776245752, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -91.30619831337742, -37.218539506685204, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -69.59786760041294, 69.99289941158607, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -56.752049393780766, -24.30851438562098, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -89.80419885841914, 95.38285339888387, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.730346868183034, -10.178541576505921, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.861845970776727, -49.389059234561415, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.250470975952965, -79.11398329369524, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 74.88279712157126, 10.748647829718422, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.77767646660283, -43.08586326682379, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.3468285660797079, -44.79360719811814, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.96668816718238, 87.437109941758, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -31.56195399597331, 97.23405510313614, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -21.574681484735024, -27.595919546315884, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.3896082285263, 13.98848740944291, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -23.822017228958714, -66.94003548842485, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 64.11359401464907, -32.02394389688004, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 31.211540338817613, 76.60165903391673, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -38.69517019946932, -85.16317963472204, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -73.47138798973637, -35.80039036700296, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 13.216004513986675, 50.6979591779269, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -76.33249606501855, 81.8292069329079, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 91.18919238423224, -37.015873296171605, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.12639531473388, 28.21263666028888, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -96.35419048200183, -35.97203426363208, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 39.97380511328572, 84.64390741290035, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.9548081038095, 76.0217419241298, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -32.831256593462314, 96.79349729770892, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -40.106478993935724, 6.930370031505944, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -36.60790731733533, -25.713678880810193, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -19.047274509819488, -61.11517765276949, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.319125659482893, 37.237106046676786, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 34.69275142908725, -31.12181714291458, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 65.19535827733364, 31.99971961342976, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 99.20971834208592, -65.99490251100352, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -52.35826850380474, -91.12522605124892, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 32.02310015120685, 63.96625589328404, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 56.56931160773118, -75.68272865351835, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -66.99462818396768, -87.78877313031734, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.773048118800716, 36.0267622361131, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -62.85071222063806, -36.59658870693795, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 89.1529041059703, 66.92428977087582, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.92294703680636, -30.701522748284958, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.1748895312356, 55.12804643185007, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -50.55810301061254, 74.64720241627364, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.94647927805726, -52.334347684196075, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -23.426178284315256, 37.941395347167, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.776336379741224, 43.31019128267566, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 26.322992000433132, -15.779721277629648, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.43272448591702, -64.17041465076454, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.071083512114484, 44.74963449196005, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 39.263776609763745, 43.89714618273577, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.21428835797769, 66.39016205015902, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 41.70223187090576, -56.83569287173822, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.1759016081184654, 85.19862066345296, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.489781209847692, -80.37493771811626, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.428239729603092, 32.7318357135164, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -77.81562863509114, 45.241247570256824, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 32.21284075419031, 65.81724020545212, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.609564105517364, -74.42723599613129, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.233982254050716, 58.103316337341006, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.5130101659014, 68.62167678094946, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.86009996437005, 43.656698206332536, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.505354392927075, -49.06714706645408, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -69.5557637809527, -74.32594986007595, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 39.46579116486215, 81.46181788415068, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.784406415077953, -86.50623672895568, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 89.59385059060057, 85.45577054903042, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.37115440243927, 41.42371680336212, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -97.13486246865935, -41.407177029665064, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.20741801781469, 50.02928699545804, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.69623450627782, -76.98015194577778, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -60.3294768970955, 62.70116961342871, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -58.20592569436221, -39.147546157068945, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.988988237957884, -83.56907560127479, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 57.592204497558086, 62.441692032384786, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 84.42011079717125, 25.02835988529894, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.52356001949812, -90.42300284323287, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -37.20172465432324, 21.19544566935599, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.215872283659436, 59.69250419213461, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 79.1632789635929, -39.95274998409744, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 86.68631178708046, -45.21740393982836, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -91.71140706873987, -36.9501942670945, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.51208471289078, -12.687138289492907, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.299476500699484, 44.36141338540769, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.3560513401425425, -54.979334672043166, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.15324442932598, 26.84939454483822, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.103825843610693, -72.23287486021826, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.2095746181296647, -95.56166310205026, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.043493883714177, -52.682487269533425, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 69.9566712297408, -77.75133867589338, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 39.007647140901945, 59.08573316704748, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.6914391509291, 2.0493137740179748, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -91.64801197853129, -61.333339446129514, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 59.992155125153566, -38.06906429030175, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.223812890889718, 30.286366819831656, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -83.91622092110947, 74.84856961235273, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 72.63799105685176, 57.80696365046207, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 51.21237467024691, -68.8999579968634, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 91.15015409251446, -81.32949709323051, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 59.96604654782334, 76.21057450843311, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -42.316288457195924, -38.67054929583017, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -51.60946203223625, 53.754142638074896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 62.885684096559835, 43.102102098130544, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.58253530198104, 3.6217257289124376, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.515533396296846, -0.0203642627685241, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.79296278709664, -74.74778377684484, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -63.924114277592054, 58.389240970679566, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.753308757951899, 22.422824373647373, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.5580405716637, -61.292356804592, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.286149734831753, -89.07878637075174, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.67606006523465, 30.458439783287446, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 53.71998573327792, 55.734154167319396, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.965733591861635, -64.48741495417255, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -56.98395786567829, 54.50418363846525, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -31.069881223936648, 24.9472864285694, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -66.90373709084113, 23.153951015122544, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 67.01869005905321, 55.40396189167822, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 98.84200014535716, -42.16527795515154, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.194998190461135, 98.56589736227401, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.102623164742383, -97.42170770973848, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -52.192135126583054, -23.981114395399672, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 89.55486328984313, 98.63421160200278, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -23.878463064317984, 81.33944207193653, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1.477646469051976, 94.36174967014814, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.90054633913775, 70.18775967353035, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 85.62734299523976, 62.358003738498, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.196997784494414, 28.29761613448207, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 84.83553692666743, 78.35351439627317, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 73.80568698603062, 41.995760034010885, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.888399664764421, 79.33582546330742, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -6.648636230547211, -65.01790642229457, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 52.63642194888916, 30.21991109237318, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -71.5032749437583, 62.50535070065304, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.74757367575904, 83.43453697298027, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.512940968194584, 37.05859093249955, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -87.7910863103763, 87.6662626063137, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.676472167594596, 62.27483882242977, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -27.0254552755858, -64.84695346566966, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 34.28750407462711, 80.81223091497961, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -23.49110025236189, -42.479539138662716, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.07952213941161, -60.18851700845639, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -75.04717461919222, -14.573299591647753, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 76.85500537132945, -42.576125009662434, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.41805489690904, -98.12314543088681, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.398125178340862, -10.005565904421417, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 85.65509555760383, 56.98448600304937, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 93.70272500392676, -32.07016472451062, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 14.597468842793717, 7.6268829049767675, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.616814884038234, -17.006504558376847, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.04300337248736, -56.593729939416704, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 83.65301156906804, 41.62385500436119, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 31.541577238780462, 76.76196007045033, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.828008098808482, -51.69604998616424, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -73.19094123109315, -11.08890664472355, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.82070308183799, -15.857394014014275, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.50320132380432, 49.03743733897316, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -79.04853717071316, 62.57215676022652, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 51.01745090985395, 12.654135015320463, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 98.83512745659901, -64.18968980375811, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.428373396024938, -77.87657372644162, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 91.55582398603227, 83.1810938696985, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.17296434985488, 70.54828393911193, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 60.78261844226729, 84.50212557943897, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.025096474190548, 58.1002021656142, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.104301727599562, 61.49712076938978, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 19.49584854696215, -20.637259534613776, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 71.22562017535334, -92.43219835291922, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -69.45369328160268, 39.89461820991198, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 41.809063629642694, 43.01292343579233, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 69.18610821494875, -11.203594360101249, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.76492296457262, -38.688460150592306, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 67.3492394636725, -90.73308740399617, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 92.91949962290494, 4.381313619047106, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -55.52700984620546, -29.94964375646981, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.535034163988655, -80.99645807741669, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15.507765178597666, -68.04110773312698, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -92.1520933149074, 10.111503902482923, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -47.05862378497221, -1.2870851640023346, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 92.54843418195318, -90.02754149973185, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -72.67682982871335, 56.11940798259414, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 56.69127526152402, 6.512964563066376, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -4.492394230120141, -85.29906014884162, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.854405199678915, -20.490461434718156, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.552964811850785, 82.13425187071688, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 18.808634273409282, 52.39608409581873, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.561208055173068, 95.55076844885622, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.330900365826892, 0.16464914194949642, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1.7034144035266081, 17.322025734024265, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.64391916365827, -28.046825592327536, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.99865922390491, 8.631305788068786, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 31.500082465601537, 69.85741232070896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.636534716180165, 24.21686796586195, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -92.91196115442247, 57.93348806406109, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -49.234974714059916, 84.65908912715582, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.953200689794585, -99.79871629589536, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 68.51586132750978, 43.77355278445343, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.39336514063335, -34.033147815890715, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.7268934582644277, -45.303127673048095, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.58961973415633, 75.79308697854947, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -93.65799521939815, 43.17625873276852, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -10.63081849659011, -24.72578554292224, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.80767731594411, -69.57213344397039, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.34477095946535, -78.2027700648714, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.3770036369816125, 82.98681906867236, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -83.41614712379672, 7.742986031693448, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.44311202151064, -36.82841972929407, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.406455774385364, -78.52549129000042, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -36.69064845544173, -92.19265356405356, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -84.50305828611823, 26.272981545500016, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 92.97192151959734, 11.70408167775588, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 60.32119213033922, -84.12747781724556, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 0.8124417647562296, -15.851616290869018, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 59.9915237618891, -9.821508468917855, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -53.0554636341879, 10.90554693118824, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 88.35309489061642, 83.20571290551527, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 32.59003848313435, 67.55217095792112, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.45549878027526, 32.750799213949875, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -68.4169434197556, 3.9658556841087176, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.329005176594492, -55.49766214742215, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -69.27561991055907, 67.11894120059313, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.9242100187649669, 48.35665014244839, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -94.21661578471782, 18.520919797490578, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 50.387447062306336, 28.767241088471792, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -37.510411237591654, 4.058818226743895, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 0.6642049819125475, -52.70364904708603, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -56.33221854132219, -1.1805173194137524, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.61211610082998, 35.18539441244526, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 23.738470886097573, -37.2921854326666, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 96.61854981155203, -92.12821373649012, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -75.72272006323976, -27.163260853452357, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.1639701192844, 62.14078600554003, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -77.55186317562678, 17.44229243574496, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.961983960630306, -29.655155984977938, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.83981107043553, -20.84049418425637, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -57.96872003939032, 33.21924405112932, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 20.511017231976325, -62.395256337824264, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.848688765122091, -87.80313924749512, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -14.736218873145205, 5.3549104021345215, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 86.87528017874095, -34.3484652990453, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 18.253849820433032, 50.03346219225841, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 0.3277466007197063, 47.97573905293198, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 67.60812768789512, 96.7996150305726, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 79.3133325017446, 62.61360404550511, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.654225981713836, -18.553989855584476, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 86.27920151197598, -36.15580084468809, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.68662732621766, 47.02813870302296, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -74.65240226875389, -60.004974773079795, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 56.11254741848288, 75.27513063609068, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -84.81624118640246, 44.04116877460766, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.77818723627132, -91.05201079518349, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -81.04614202293905, -82.51521523610018, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -92.37542588014506, 47.24896315875888, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -89.86098400214706, -39.98141262944017, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 57.85008918700423, -34.8493132891297, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.22652727869388, 88.2830477030494, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -27.072502090197986, -44.24107867489502, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 55.84847014908014, 18.601988560429334, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.886056001068795, 61.26091450141074, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 33.35172940101026, 80.69355554400776, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -66.03951709050807, 62.636814940996864, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.07026506008895, 75.28225376180897, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.608959516895496, 27.71368643078422, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.7129550941220373, 59.53558485257857, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.4709357683232, 64.80691522660376, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.367566369007506, -48.65904994916389, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 70.83955621722544, 22.446203394590597, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -21.936998069466412, -99.07046045797944, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.915306350631042, 51.839535631723386, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.23984834481918, 53.740712629650346, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -96.51835835593076, 0.45923597086137136, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -42.38361898185562, -14.198264462448051, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.08717701013275, -69.05075820895777, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 18.168539657560245, 61.62951845090063, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 63.21303615220102, -24.85183197982046, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.33276611763606, -86.9385583051625, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 87.05478025636992, 21.20683841938896, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -68.99813875362813, 34.45222692008052, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 56.59986182892727, 73.37667334762168, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.294610018729202, 94.7318482563004, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -17.44906629712534, 24.138574213904633, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 2.6279371120025132, -12.737502901467138, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.5420549041191833, -37.40413726063542, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 32.11037832072661, 49.58281834536082, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.189078797719546, 31.246826606796844, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.12380046618636, 80.49449217566433, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -43.2549206046709, 36.93223786121757, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -51.35505426490306, 33.471199964812286, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -71.72810008933192, -18.66953184464961, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 61.72417883743573, 2.89695540436594, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -20.998640784181163, -30.661953236113618, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -89.03584163120422, -69.60448185169926, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.46941154747043, -6.3690391262952915, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -95.31144632473394, 37.7392442166431, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.92005936834248, 86.56756916753406, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -67.34583880084085, -12.125415464533518, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 12.74942619798965, -13.997380895040209, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.5667600266720569, -26.626998896099124, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -75.23308866542885, -36.3832364223195, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -76.52132737759803, -50.43755760636114, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -92.62077641352943, 79.96322742545603, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 68.3234701378725, 65.63186367325989, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -7.28119841614587, -20.60636891779724, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.6313682777896, -39.12782718443725, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -73.0158197527634, -39.78217797800346, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.21659723204323, 90.55894470040991, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 2.554050320639817, -96.04789094457774, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 95.67969983385768, 17.773851856239858, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -7.377698430843083, 88.3199879060721, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 93.89158266386133, -52.01495373879982, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.90493146141144, -27.96718793294741, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -7.776513980178294, 55.531869562359184, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.13871693186897, 23.049321093284462, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -1.1192355248334565, 6.568725599834082, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.084957558922724, 52.674436843431764, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 13.112768178888643, -48.8054651117659, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.31362261626879, -42.99074580474911, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 52.836383153161435, 57.26471676352305, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 41.55217278617825, 34.80294390548467, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.52630881131104, 30.456839651498726, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 50.373908662990495, 97.42551138067822, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 51.99116425548347, -33.309878959453044, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 32.58042953530986, 3.6244166283937176, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.234761130151014, -82.21600780621321, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -77.68196339990055, 54.58328171738249, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.726140784788512, 45.91818271573378, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.182936324823118, -86.61381571577547, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 96.21340089017548, 49.94047217147606, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 23.66564716274327, 57.491108452721384, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 31.101525196531682, 32.62449068798179, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 91.07304632516993, 6.714683375483247, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -84.57583177588174, 99.25156646843209, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -58.03123199469073, 17.27546165108147, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.637787717786296, -17.25755693160474, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.1499929447055734, -33.11429532221041, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1.3401183252578903, 55.33259881091781, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.499587393668776, -41.33373642564635, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 86.48307903804357, 81.04411975629206, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 95.52283267788945, 98.25379996774922, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.5534697501396835, -12.393382102846658, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 70.184419084425, 87.62780455865497, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.50138584084257, -26.666177433008272, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -53.40143078617268, -9.349145474642256, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -79.66813747026151, -72.6419328353341, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.04210838408949, 8.373469524481749, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.89148396162898, 75.22939409457648, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.899767620741486, -23.719009870399077, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -94.33027532123734, -19.215351153008967, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -66.87035463475132, 10.174394602468652, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.795079392803743, -4.194680639073894, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -94.32759090979852, -0.9849797352460996, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.271914565906812, -49.01428811469256, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.16313602116182, 34.21203263797885, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.363085247812847, 71.38276148197234, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -66.62020941096941, 73.64956325021566, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -80.61350913317028, -57.2317839898198, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 32.443437744275855, -99.38918198650438, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 24.692528123897745, -95.27996612486302, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 62.462863894024736, -96.42503795993971, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 17.933740583142566, 23.353482483007156, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 10.415590084750676, -32.22645396426489, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.132967736337449, -18.890530564334057, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 87.44525841438673, 94.54051137079648, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.365239587272498, -98.69099429566054, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.1302485388918058, -8.981178272100365, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.655563644633084, 48.340650187027244, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -76.63826031132265, -59.35545724064019, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -84.76407508250233, 35.20127128802626, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -63.95298054032915, -63.07276036588934, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 69.70573315756572, -6.361563190313689, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -17.989226129189177, 1.5084170557829992, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 79.58465349597228, 16.24477355983322, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -98.16461439435767, 18.038698804747042, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 90.34919094294662, -6.865188624394804, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 22.968651750675974, 45.69521987476271, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 53.616653057777874, -10.371408533519372, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.17388442747276, -14.877029931857649, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.8725842357836484, -95.62406161521432, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -66.32906553270072, -88.11352499484016, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.96604190210854, -31.60784519855534, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.15432226827022, -50.326603027268646, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -52.6940790965524, 78.48888998713544, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -56.3200782479656, 82.56567905475887, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 68.91351175205224, 5.667921521437108, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 8.700066039559488, -54.07598375116129, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.084536642275737, -59.15789480313168, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.06292566748854, 78.36967299416177, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.267872631556614, -52.97709802003138, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.335466086356632, -12.518289706919589, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -42.200359464265716, 64.29564876179441, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.91313123610245, -9.150784517424299, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -52.03083746258349, 14.928144868769166, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.576452560158955, -38.300092267243315, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -82.0127689204786, 85.47494138110795, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 46.5569219105856, 59.700393454943864, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -74.53830098363659, -25.487704526378792, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.437970416417215, 84.38980118397197, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -17.519072389575157, 5.224515000584034, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -17.919330663944024, -36.186672525545305, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -60.45481338519312, 53.34191007933961, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -35.30893902653074, 36.36405781530412, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 87.42832717242504, 10.499705422711926, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 64.48088016079092, -49.31030394052786, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 3.8014033423838782, 70.75105714801077, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 84.32496933561704, -5.51477856065334, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.60083919008963, -96.3320823414573, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 33.586693223018614, 84.0182433343077, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.39718220442046, 78.56971192908864, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.82248223014811, 6.809782839839457, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -33.3265829380648, 23.07602895910783, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.29923367450985, 15.743648221623914, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -68.74122273691242, -40.60993833994746, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 67.47342920447919, 96.50731842528701, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.454675117294343, 80.98637172691845, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 94.67526643608917, -41.245335520000026, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 23.459582077380503, -77.9186792624964, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 76.71011396743657, -72.86793295984455, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.20080024245104, -89.2694698067863, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 91.88472526852505, -68.86530465423041, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 95.22702202751105, -45.05535447800332, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 58.029925253691104, -61.04003282395297, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.181668010741404, -10.692616260082488, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 50.29827904230895, -39.91277182636003, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -62.14893718716263, 74.91812755601202, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.00427752505078, 26.083188699649895, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -89.9014812040646, -43.80926735719419, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -64.28277307867774, 34.585755367473595, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 93.4838707539722, -74.00871034474835, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.19330414450289, 73.49741112001192, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -53.96554462050162, -99.37988877498643, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 92.59197233930419, 25.118528335324612, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.51966155386711, -78.11070996796522, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -40.72140583510998, 28.108129762265804, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 1.7363922305098072, 68.2567620332749, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -75.79959442609362, 15.948240628634508, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 30.635477102556635, -50.6737072778912, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -97.06299199021856, -89.60383822818133, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -90.35339438808941, -0.7100219272060428, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.4088786908641, 14.752364070815688, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -18.07296116883505, 55.76928357315136, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.01123352911638, -22.14947957880105, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 21.95915386142873, -44.67940871128394, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 10.402289077641854, 43.09290535834083, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -28.195683244352438, 75.31766411621241, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 50.72137718297532, -37.49981982070457, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -3.622008341748014, -41.73798900550909, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 53.89597343524288, 40.72082558075891, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.034816268352017, -12.330043918060923, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 77.32641823490303, 10.495016474836973, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 25.12972315189046, 95.34613839035622, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.09947369084756, -1.171808543178713, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -24.93490114935821, 8.6180119195498, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -79.24325558092966, 81.71815062946548, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.639435815742615, 73.11289370978585, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 52.08500313611428, -18.29990127476107, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -91.92360274245135, -1.3391040718684764, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.51133525372737, 46.700143241861845, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -67.70536253598229, -24.787833455070455, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 96.27684695366435, 34.72457818018148, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 51.209993831971936, 54.43107332172428, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 86.6020187845479, -48.13597452995495, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 89.52046332898153, -82.63172239342552, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.92936681205825, 68.67552792477815, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.83056413811505, -15.389975559254012, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.009938382926805, -12.192954049274448, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 37.462460540281086, -61.63904792092731, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.62595901152342, -33.47851062112278, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 6.07870131287514, -76.50425253227118, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -16.301306028098807, 56.831178994684436, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -50.38719081591077, 31.05328857528265, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15.84131690796707, -6.442255376562983, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.95665087446912, 23.089168711477015, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.76210863733688, -78.77167688754469, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 77.36935940100187, 81.01617414384172, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -99.08206450453244, -72.24452450602286, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -54.91387896408938, 75.1797994782304, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -58.74232190307836, 87.63319138547203, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.23915436796777, 18.62405661360968, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -41.87230072322444, -88.98662855237819, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -11.918796126575785, -8.997462617027054, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -45.542711028304836, 60.65776417427959, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.841648166908428, -59.53656828106557, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.50150911081253, -70.96547069223723, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.38607623442131, 79.52774193053358, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 53.48703001724693, -24.948799887768573, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -25.567251810898384, 32.659187333988854, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -37.755604662454346, 15.982769583604778, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.699154131454335, 11.55373073100958, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 65.84079465444418, 11.458105376247829, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 93.75227583363639, -5.344904256277246, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -46.442598206054754, -65.48309031686483, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 93.31089375970438, -47.5927006525165, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 36.86158332716394, -21.188544785099282, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 67.07637621494538, 28.54850742787977, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -85.55020742839113, -66.6905011867652, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -56.647845946044384, -83.59184192746642, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 40.10480148853954, -97.75847575505315, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -42.15409682107682, -72.07275413982717, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -54.17424774421761, 51.905712888721126, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 42.97462260049394, -21.046979528295353, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.197780748076582, -22.892491693911452, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 33.4294380379137, -64.90447254432675, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -5.476475876130763, -53.46932279028431, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -56.35932576826147, -97.4664682713846, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 85.91036443607787, 47.40956597498154, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 78.50419103843618, -67.19593880469472, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 82.00625748890516, 14.26787751044354, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.7908693809645, 65.68641216567417, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 66.35953857774592, 21.787420925804838, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -95.41955586068025, 64.73000984599193, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 83.47311275076943, 46.963416777442916, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 96.53375866637401, -45.89259765302418, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 31.602611635640443, -65.81426177691631, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 73.61770255888254, 48.802758179129626, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -75.13685936552531, 11.666057269136672, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 81.19126816241521, 95.03673587441361, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -58.74891576576675, -2.9729772808435087, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 59.83794883661435, 67.49688606274788, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.1853989740131965, -91.1560870232444, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.547262294127094, 76.46898344728865, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -26.76439646101892, -56.89200920565975, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.3674326777528, 13.886768422773741, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 99.62736626915536, 40.25773316820551, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 45.960545691727006, -56.99261884768782, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 7.364605505276074, 73.05406452801444, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 67.29689788184649, -91.03324897685971, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -59.28769135344609, 2.1666832551340462, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -81.2842074780745, -97.27624762218761, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 35.86624294994762, -3.823117703869187, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -80.65529593508339, -23.62830012847907, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.506744086669826, -43.0628035807305, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.34139880416313, 60.399094621255365, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -67.80912017934116, 80.90423246010388, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 19.92959622115609, 54.72533904748032, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.10308632188281, 39.97748661545204, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.540043285482, -13.182358523343709, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -79.0021898443122, -25.89109390124929, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 43.17127575924662, 47.774473714219255, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -9.142408774272496, 92.27544642656457, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -86.88627898503478, -92.19243559047325, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 29.651181182425958, 83.93658291457764, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 28.882988539073253, 68.56591961590341, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -67.16961655860504, 53.03467973594347, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -70.13359189170268, -33.06400507348414, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.08683035512135, 85.02163073931874, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -7.979825966804597, 72.87763529323787, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -39.82152036492761, 44.07826132909012, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -85.5171893071489, -17.957447492339313, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 5.467109684921169, -88.22977066160229, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -91.08327425029606, 44.17677581516482, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -9.88100074058265, 95.07412343503252, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -0.9064003705560708, 53.76225554623018, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.01555744350099, 74.32747125824943, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.258870470858028, 48.61944362209205, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -10.282276372976455, 62.22477043050634, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 78.37721156985569, -95.41033955763999, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 89.12380198188208, 81.18772601879134, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 11.753477662723455, 6.440976504914403, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 73.19970223328487, -69.20176327353707, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 4.923146311246057, 80.18399413547553, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -47.12935997077187, 67.83551015830707, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -72.6925480133354, -56.37587544085284, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -29.316907436450578, -57.52761120890929, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -37.5146762271676, -48.140923240285275, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -61.46492378897142, -23.09386286696879, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 52.576224116601544, 3.0465570729244718, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -44.70211253911708, -36.38513267268513, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -2.09260146667134, -13.82942797093061, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 9.626903748760355, 10.154215587085119, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 27.08621871474844, -28.66774264315262, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -51.519357119494515, 19.547076667517032, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 54.96395591333689, 9.727468558861347, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -15.05889020213344, -28.286899105863966, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 16.978955729053965, 75.26458755726009, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 38.43001302051232, 96.48333635729531, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 49.277557824035334, -75.56647900425841, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 19.265425899391843, -42.58844718332253, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 55.47118160078912, 44.791349208267306, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 34.976643411243955, 4.897297789278852, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -57.77798133449403, -21.8268090303051, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -89.38727690176171, -12.638563357120432, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 48.58903021241798, 98.1556610098191, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 72.34506033229673, 90.75387155767545, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -56.522610425085276, -52.116441175811616, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -48.269909592712594, -53.3438394860886, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -76.54425275687444, -88.62117953464491, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -62.21494075617048, 29.814730785261773, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -34.787491377570234, 61.302539925486776, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -70.68408842085557, 19.40006657260578, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -13.670492817396251, -60.83782615445469, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 13.530387815940514, -21.187519930723525, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, -8.735617615756382, -70.59922082276202, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
   
   
        offset = GetObjectOffsetFromCoords(x, y, z, 0.0, 97.01461124522228, 40.39156665043318, 0)
        Wait(10)
        ShootSingleBulletBetweenCoords(GetEntityCoords(aircraft3).x, GetEntityCoords(aircraft1).y, GetEntityCoords(aircraft1).z-20.0,offset.x,offset.y,offset.z, 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), PlayerPedId(), true, false, 9000.0)
        Wait(45000)
        SetEntityHealth(aircraft3, 0)
        SetEntityHealth(pilot3, 0)
        NetworkExplodeVehicle(aircraft3, true, false, false)
        RemoveBlip(blip3)
      end)
      end
      Wait(0)
    end
     ]]
  end

  end)
  end)