RegisterCommand("tp", function(source, args, raw)
    SetEntityCoords(PlayerPedId(), args[1], args[2], args[3], 1, 0, 0, 1)
end, false)

AddEventHandler("menu:setup", function()
	TriggerEvent("menu:addModuleItem", nil, "Teleport To Waypoint", nil, false, function()
		local blip = GetFirstBlipInfoId(8)
		local blipX = 0.0
		local blipY = 0.0
		
		if (blip ~= 0) then
			local coord = GetBlipCoords(blip)
			blipX = coord.x
			blipY = coord.y
		end
		SetEntityCoords(PlayerPedId(),blipX,blipY,GetGroundZFor_3dCoord(blipX, blipY, 400.0),1,0,0,1)
	end)
end)

Citizen.CreateThread(function()
while true do
    Wait(100)
    if GetEntityCoords(PlayerPedId()).z < 0 or IsEntityInAir(PlayerPedId()) and not IsPedInAnyVehicle(PlayerPedId(), false) then
    SetEntityInvincible(PlayerPedId(), true)
    else
        SetEntityInvincible(PlayerPedId(), false)
    end
end
end)

-- testing to see what happens when i commit :^)