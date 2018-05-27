RegisterNetEvent("menu:exists")
RegisterNetEvent("menu:getVersion")
RegisterNetEvent("menu:blockInput")
RegisterNetEvent("menu:hideMenu")
RegisterNetEvent("menu:isMenuShown")
RegisterNetEvent("menu:goBackMenu")
RegisterNetEvent("menu:goToMainMenu")

AddEventHandler("menu:exists", function(cb)
	if cb then
		cb()
	end
end)

AddEventHandler("menu:getVersion", function(cb)
	if cb then
		cb(GetResourceMetadata(GetCurrentResourceName(), "resource_version", 0))
	end
end)

AddEventHandler("menu:blockInput", function(state)
	if state == false or state == true then
		blockinput = state
	end
end)

AddEventHandler("menu:hideMenu", function()
	if menuopen then
		SendNUIMessage({
			hidemenu = true
		})
	end
end)

AddEventHandler("menu:isMenuShown", function(cb)
	if cb then
		cb(menuopen)
	end
end)

AddEventHandler("menu:goBackMenu", function()
	if menuopen then
		SendNUIMessage({
			menuback = true,
			nosound = true
		})
	end
end)

AddEventHandler("menu:goToMainMenu", function()
	if menuopen then
		SendNUIMessage({
			toMainMenu = true
		})
	end
end)