local function _SetEntityAsNoLongerNeeded(entity)
	Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(entity))
end

Citizen.CreateThread(function()
	while true do
		Wait(1)

		local playerPed = GetPlayerPed(-1)
		if playerPed then
			local x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			local rock = GetHashKey("prop_rock_4_d")

			RequestModel(rock)
			if not HasModelLoaded(rock) then
				Wait(1)
			end

			local rX = x + math.random(-75, 75)
			local rY = y + math.random(-75, 75)
			local rZ = z + 50

			local obj = CreateObject(rock, rX, rY, rZ, true, true, true)
			SetEntityDynamic(obj, true)
			SetObjectPhysicsParams(obj, 99999.0, 0.0, 0.0, 0.0, 0.0, 700.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			SetEntityVelocity(obj, 0.0, 0.0, math.random() + math.random(-1000, -500))

			Wait(500)
			_SetEntityAsNoLongerNeeded(obj)
		end
	end
end)