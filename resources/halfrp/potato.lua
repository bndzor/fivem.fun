Citizen.CreateThread(function()
	while true do
		Wait(100)

		for vehicle in EnumerateVehicles() do
			ApplyForceToEntity(vehicle, 2, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0, true, 0, true, 0, 0)
		end
	end
end)