local ox_inventory = exports.ox_inventory


RegisterNetEvent('interactions:cardRequested')
AddEventHandler('interactions:cardRequested', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local identifier = xPlayer.getIdentifier()
	local metadata = {}
	local  hasLisence = true 
	if item == "drivers_license" then
		hasLisence = MySQL.scalar.await('SELECT * FROM user_licenses WHERE owner = ? and type like ?', { identifier, "drive%"})
	elseif item=="farmlicense" then
		hasLisence = MySQL.scalar.await('SELECT * FROM user_licenses WHERE owner = ? and type = ?', { identifier, "weapon"})
	end
	if hasLisence then
		if  ox_inventory:GetItem(_source, 'money', nil, true) > 500 then
			local playerInfo = MySQL.single.await('SELECT * FROM users WHERE identifier = ?', {identifier})
			metadata["playerInfo"] = {firstname=playerInfo.firstname, lastname=playerInfo.lastname, height=playerInfo.height, sex=playerInfo.sex, dateofbirth=playerInfo.dateofbirth}
			metadata["identifier"] = identifier
			ox_inventory:AddItem(_source, item, 1, metadata, nil, function(success, reason)
				if success then
					TriggerClientEvent('ox_lib:notify', _source, {
						type = 'success',
						description = "purchased successfully"
					})
					ox_inventory:RemoveItem(_source, 'money', 500)
				else
					TriggerClientEvent('ox_lib:notify', _source, {
						type = 'error',
						description = reason
					})
				end
			end)
		else
			TriggerClientEvent('ox_lib:notify', _source, {
				type = 'error',
				description = "not enough cash, it cost's 500$"
			})
		end
	else
		TriggerClientEvent('ox_lib:notify', _source, {
			type = 'error',
			description = "you need to get the license first"
		})
	end
end)

exports('idcard', function(event, item, inventory, slot, data)
	if event == 'usingItem' then
		if ox_inventory:GetItem(inventory, item, inventory.items[slot].metadata, true) > 0 then
			-- if we return false here, we can cancel item use
			return true
		end
	end
end)
