RegisterServerEvent("chatCommandEntered")
RegisterServerEvent("chatMessageEntered")
RegisterServerEvent("CGC:tpanewplayer")
RegisterServerEvent("CGC:tpastatus")

players = {}

AddEventHandler("CGC:tpanewplayer", function()
    players[source] = true
end)

AddEventHandler("playerDropped", function(reason)
    players[source] = nil
end)

RegisterCommand("tpa", function(source, args)
	target = tonumber(args[1])
	
	if target == nil or players[target] == nil then
		TriggerClientEvent("chatMessage", source, "ERROR", {255, 0, 0}, "Player id not found.")
		return
	end
	
	TriggerClientEvent("chatMessage", source, "INFO", {255, 255, 0}, "Requested teleport.")
	TriggerClientEvent("CGC:tpa", target, source, GetPlayerName(source))
end)

RegisterCommand("tpaccept", function(source, args)
	TriggerClientEvent("CGC:tpaccept", source)
end)

RegisterCommand("tpdeny", function(source, args)
	TriggerClientEvent("CGC:tpdeny", source)
	CancelEvent()
end)

AddEventHandler("CGC:tpastatus", function(source, target, accepted)
    TriggerClientEvent("CGC:teleport", target, source, accepted)
end)