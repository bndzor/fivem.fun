RegisterNetEvent("CGC:tpa")
RegisterNetEvent("CGC:tpaccept")
RegisterNetEvent("CGC:tpdeny")
RegisterNetEvent("CGC:teleport")

local requester = nil

TriggerServerEvent("CGC:tpanewplayer")

AddEventHandler("CGC:tpa", function(newRequester, newRequesterName)
    requester = newRequester
    TriggerEvent("chatMessage", "INFO", {255, 255, 0}, newRequesterName .. " wants to teleport to you.")
    TriggerEvent("chatMessage", "INFO", {255, 255, 0}, "/tpaccept or /tpdeny to accept/deny.")
end)

AddEventHandler("CGC:tpaccept", function()
    if requester == nil then
        TriggerEvent("chatMessage", "ERROR", {255, 0, 0}, "Nobody is requesting to teleport to you at the moment.")
        return
    end
    
    TriggerServerEvent("CGC:tpastatus", PlayerId(), requester, true)
    TriggerEvent("chatMessage", "INFO", {255, 255, 0}, "Accepted teleport.")
    requester = nil
end)

AddEventHandler("CGC:tpdeny", function()
    if requester == nil then
        TriggerEvent("chatMessage", "ERROR", {255, 0, 0}, "Nobody is requesting to teleport to you at the moment.")
        return
    end
    
    TriggerServerEvent("CGC:tpastatus", PlayerId(), requester, false)
    TriggerEvent("chatMessage", "INFO", {255, 255, 0}, "Denied teleport.")
    requester = nil
end)

AddEventHandler("CGC:teleport", function(target, accepted)
    if not accepted then
        TriggerEvent("chatMessage", "INFO", {255, 255, 0}, "Teleport was not accepted.")
        return
    end
    
    x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(target) , true))
    SetEntityCoords(GetPlayerPed(-1), x, y, z, 1, 0, 0, 1)
    TriggerEvent("chatMessage", "INFO", {255, 255, 0}, "Teleport was accepted.")
end)