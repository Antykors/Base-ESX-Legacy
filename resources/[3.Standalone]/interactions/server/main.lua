-- cuff / uncuff
lib.callback.register('interactions:handcuff', function(source, target, playerheading, playerlocation, playerCoords)
	local xPlayer = ESX.GetPlayerFromId(source) 
    local hasHandCuff = xPlayer.hasItem("handcuffs")
    local hasZiptie = xPlayer.hasItem("ziptie")
	if (xPlayer.job.name == 'police') or (hasHandCuff.count > 0) or (hasZiptie.count > 0) then
		TriggerClientEvent('interactions:handcuff', target, playerheading, playerlocation, playerCoords)
		return true
	else
		TriggerClientEvent('ox_lib:notify', source, {
			type = 'error',
			description = "you need to have a Ziptie or handcuffs or need to be a police"
		})
		return false
	end
end)

-- escort
RegisterNetEvent('interactions:escort')
AddEventHandler('interactions:escort', function(target)
		TriggerClientEvent('interactions:escort', target, source)
end)

-- put in vehecule
RegisterNetEvent('interactions:putInVehicle')
AddEventHandler('interactions:putInVehicle', function(target)
	TriggerClientEvent('interactions:putInVehicle', target)
end)

-- out the vehicle
RegisterNetEvent('interactions:OutVehicle')
AddEventHandler('interactions:OutVehicle', function(target)
	TriggerClientEvent('interactions:OutVehicle', target)
end)

lib.versionCheck('daiguel/interactions')