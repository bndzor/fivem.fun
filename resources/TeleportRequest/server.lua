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

AddEventHandler("chatMessage", function(p, color, msg)
    if msg:sub(1, 1) == "/" then
        fullcmd = stringSplit(msg, " ")
        cmd = fullcmd[1]
        args = makeArgs(fullcmd)
        
        if cmd == "/tpa" then
            CancelEvent()
            target = tonumber(args[1])
            
            if target == nil or players[target] == nil then
                TriggerClientEvent("chatMessage", p, "ERROR", {255, 0, 0}, "Player id not found.")
                return
            end
            
            TriggerClientEvent("chatMessage", p, "INFO", {255, 255, 0}, "Requested teleport.")
            TriggerClientEvent("CGC:tpa", target, p, GetPlayerName(p))
        elseif cmd == "/tpaccept" then
            TriggerClientEvent("CGC:tpaccept", p)
            CancelEvent()
        elseif cmd == "/tpdeny" then
            TriggerClientEvent("CGC:tpdeny", p)
            CancelEvent()
        end
    end
end)

AddEventHandler("CGC:tpastatus", function(source, target, accepted)
    TriggerClientEvent("CGC:teleport", target, source, accepted)
end)

function stringSplit(self, delimiter)
  local a = self:Split(delimiter)
  local t = {}

  for i = 0, #a - 1 do
     table.insert(t, a[i])
  end

  return t
end

function makeArgs(cmd)
    args = {}
    for i = 2, #cmd, 1 do
        table.insert(args, cmd[i])
    end
    return args
end