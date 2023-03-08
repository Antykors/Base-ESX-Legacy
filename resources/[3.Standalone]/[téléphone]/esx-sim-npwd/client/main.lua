local SIM = {}
local elements = {}

RegisterNetEvent('esx-sim-npwd:sendNotification')
AddEventHandler('esx-sim-npwd:sendNotification', function(nType, nMsg)
	if Config.usingMythic then
		TriggerEvent('mythic_notify:client:SendAlert', {type = nType, text = nMsg, length = 2500})
	else
		SetNotificationTextEntry('STRING')
		AddTextComponentString(nMsg)
		DrawNotification(0,1)
	end
end)

function openMenu()
	for i = 1, #SIM, 1 do
		table.insert(elements, {
			label = SIM[i].label,
			value = SIM[i].number,
		})
	end

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'simSelection',
	{
		title = _U('simMenu'),
		align = Config.menuAlign,
		elements = elements,
	},
	function(data, menu)
		local currentValue = data.current.value
		
		openFunctionMenu(currentValue)
	end,
	function(data, menu)
		menu.close()
		elements = {}
	end
	)
end

function openFunctionMenu(phoneNumber)
	local optElements = {
		{label = _U('use'), value = 'use'},
		{label = _U('give'), value = 'give'},
		{label = _U('throw'), value = 'throw'},
	}
	elements = {}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'simOptions',
	{
		title = _U('simOptions'),
		align = Config.menuAlign,
		elements = optElements,
	},
	function(data, menu)
		local value = data.current.value

		if value == 'use' then
			ESX.TriggerServerCallback('esx-sim-npwd:getItemAmount', function(qtty)
				if qtty >= 0 then
					TriggerServerEvent("esx-sim-npwd:switchSim", phoneNumber)
					menu.close()
				else
					TriggerEvent('esx-sim-npwd:sendNotification', 'error', _U('noPhone'))
				end
			end, 'phone')
		elseif value == 'give' then
			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			local closestPed = GetPlayerPed(closestPlayer)

			if closestPlayer ~= -1 and closestDistance < 3.0 then
				TriggerServerEvent('esx-sim-npwd:giveNumber', GetPlayerServerId(closestPlayer), phoneNumber)
				table.remove(SimTab, i)
				menu.close()
			else
				TriggerEvent('esx-sim-npwd:sendNotification', 'error', _U('noPlayerNear'))
			end
		elseif value == 'throw' then
			TriggerServerEvent('esx-sim-npwd:throwSim', phoneNumber)
			table.remove(SimTab, i)
			menu.close()
		end
	end,
	function(data, menu)
		menu.close()
		openMenu()
	end
	)
end

RegisterCommand(Config.defaultCommand, function()
	ESX.TriggerServerCallback("esx-sim-npwd:fetchSimDB", function(result)
		SIM = result
		openMenu()
	end)
	
end, false)

if Config.usingKeymap then
	RegisterKeyMapping(Config.defaultCommand, _U('keyMapdesc'), 'keyboard', Config.customKey)
end