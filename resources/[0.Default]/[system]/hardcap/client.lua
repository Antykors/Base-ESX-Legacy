Citizen.CreateThread(function()
	while true do
		Wait(0)
		-- F.A.S.
		if NetworkIsSessionStarted() then
			TriggerServerEvent('hardcap:playerActivated')

			return
		end
	end
end)