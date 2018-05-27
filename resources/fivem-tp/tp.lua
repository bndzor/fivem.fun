RegisterCommand("tp", function(source, args, raw)
    SetEntityCoords(PlayerPedId(), args[1], args[2], args[3], 1, 0, 0, 1)
end, false)

Citizen.CreateThread(function()
while true do
    Wait(0)
if IsControlJustPressed(1, 289) then
    local blip = GetFirstBlipInfoId(8)
    local blipX = 0.0
    local blipY = 0.0
    
    if (blip ~= 0) then
        local coord = GetBlipCoords(blip)
        blipX = coord.x
        blipY = coord.y
    end
    GetGroundZFor_3dCoord(blipX, blipY, 400.0)
    SetEntityCoords(PlayerPedId(),blipX,blipY,GetGroundZFor_3dCoord(blipX, blipY, 100.0),1,0,0,1)
end
end
end)