Citizen.CreateThread(function()
	-- Init on resource reload
	Wait(500)
	if GetPlayerPed(-1) then
		init()
		alreadySpawned = true
	end
	
	while true do
		Wait(1)
		
		if not blockinput then
			for _, data in ipairs(config.controls) do
				if menuopen or data.alwayslisten then
					for i, control in ipairs(data.control) do
						if not IsControlPressed(1, control) then
							break
						end
						
						if i == #data.control then -- check if all specified controls are pressed
							if IsControlJustPressed(1, control) then
								data.scrollcooldown = config.scrolling.cooldown
								send(data.action)
							elseif IsControlPressed(1, control) and data.scrollcooldown then
								if data.scrollcooldown > 0 then
									data.scrollcooldown = data.scrollcooldown - 1
								else
									data.scrollcooldown = config.scrolling.continouscooldown
									send(data.action)
								end
							elseif IsControlJustReleased(1, control) then
								data.scrollcooldown = 0
							end
						end
					end
				end
			end
		end
	end
end)

function init()
	SendNUIMessage({
		config = {data = config}
	})
	TriggerEvent("menu:setup")
	TriggerServerEvent("menu:setup")
end

AddEventHandler("playerSpawned", function(spawn)
	if not alreadySpawned then
		init()
		alreadySpawned = true
	end
end)

RegisterNUICallback("playsound", function(data, cb)
	PlaySoundFrontend(-1, data.name, "HUD_FRONTEND_DEFAULT_SOUNDSET",  true)
end)

RegisterNUICallback("menuclose", function(data, cb)
	menuopen = false
end)

RegisterNUICallback("print", function(data, cb)
	print(data.msg)
end)

function send(data)
	if data == "toggle" then
		if not menuopen then
			menuopen = true
			SendNUIMessage({
				showmenu = true
			})
		else
			menuopen = false
			SendNUIMessage({
				hidemenu = true
			})
		end
	elseif data == "enter" then
		SendNUIMessage({
			menuenter = true
		})
	elseif data == "back" then
		SendNUIMessage({
			menuback = true
		})
	elseif data == "up" then
		SendNUIMessage({
			menuup = true
		})
	elseif data == "down" then
		SendNUIMessage({
			menudown = true
		})
	elseif data == "right" then
		SendNUIMessage({
			menuright = true
		})
	elseif data == "left" then
		SendNUIMessage({
			menuleft = true
		})
	end
end