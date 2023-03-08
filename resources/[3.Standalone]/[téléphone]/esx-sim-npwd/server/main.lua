ESX.RegisterUsableItem('sim_card', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local phoneNumber = exports.npwd:generatePhoneNumber()

	xPlayer.removeInventoryItem('sim_card', 1)

	MySQL.Async.execute(
		'INSERT INTO user_sim (identifier,number,label) VALUES(@identifier,@phone_number,@label)',
		{
			['@identifier']   = xPlayer.identifier,
			['@phone_number'] = phoneNumber,
			['@label'] = phoneNumber,

		}
	)

	TriggerClientEvent("esx-sim-npwd:sendNotification", _source, 'inform', _U('newSim', phoneNumber))
end)

ESX.RegisterServerCallback('esx-sim-npwd:getItemAmount', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
    local items = xPlayer.getInventoryItem(item)

    if items == nil then
		cb(0)
	else
		cb(items.count)
    end
end)

ESX.RegisterServerCallback('esx-sim-npwd:fetchSimDB', function(source, cb)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    MySQL.Async.fetchAll('SELECT * FROM user_sim WHERE identifier = @identifier',
    {
        ['@identifier'] = xPlayer.identifier
    },
    function(result)
    	cb(result)
    end)
end)

RegisterServerEvent('esx-sim-npwd:switchSim')
AddEventHandler('esx-sim-npwd:switchSim', function(numb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname, phone_number FROM `users` WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	})

	if result[1] and result[1].firstname and result[1].lastname and result[1].phone_number ~= nil then
		exports.npwd:unloadPlayer(_source)
		exports.npwd:newPlayer({ source = _source, firstname = result[1].firstname, lastname = result[1].lastname, identifier = xPlayer.identifier, phoneNumber = numb })
	elseif result[1] and result[1].firstname and result[1].lastname and result[1].phone_number == nil then
		exports.npwd:newPlayer({ source = _source, firstname = result[1].firstname, lastname = result[1].lastname, identifier = xPlayer.identifier, phoneNumber = numb })
	end
  
	MySQL.Async.execute('UPDATE users SET phone_number = @phone_number WHERE identifier = @identifier',
    {
       	['@identifier']   = xPlayer.identifier,
       	['@phone_number'] = numb
    })

	TriggerClientEvent("esx-sim-npwd:sendNotification", _source, 'inform', _U('switchedSim', numb))
end)

RegisterServerEvent('esx-sim-npwd:throwSim')
AddEventHandler('esx-sim-npwd:throwSim', function(number)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local sim_n = MySQL.Sync.fetchAll('SELECT phone_number FROM `users` WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	})

	if sim_n[1] and sim_n[1].phone_number and sim_n[1].phone_number == number then
		MySQL.Async.execute('UPDATE users SET phone_number = @phone_number WHERE identifier = @identifier',
		{
			['@identifier']   = xPlayer.identifier,
			['@phone_number'] = nil
		})

		exports.npwd:unloadPlayer(_source)
	end
	
	MySQL.Async.execute('DELETE FROM user_sim where identifier = @identifier AND number = @number ',
	{
		['@identifier']   = xPlayer.identifier,
		['@number'] = number	
	})
	
	TriggerClientEvent("esx-sim-npwd:sendNotification", _source, 'inform', _U('throwedSim', number))
end)

RegisterServerEvent('esx-sim-npwd:giveNumber')
AddEventHandler('esx-sim-npwd:giveNumber', function(target, number)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayer2 = ESX.GetPlayerFromId(target)
	MySQL.Async.fetchAll('SELECT * FROM `users` WHERE `identifier` = @identifier',
	{
		['@identifier'] = xPlayer.identifier,		
	},function(result)
		if result[1].phone_number == number then
			exports.npwd:unloadPlayer(_source)
			MySQL.Async.execute('UPDATE users SET phone_number = @phone_number WHERE identifier = @identifier',
			{
				['@identifier']   = xPlayer.identifier,
				['@phone_number'] = nil
			})
		end

		MySQL.Async.execute('DELETE FROM user_sim where identifier = @identifier AND number = @number ',
		{
			['@identifier'] = xPlayer.identifier,
			['@number'] = number
		})

		MySQL.Async.execute('INSERT INTO user_sim (identifier, number, label) VALUES (@identifier, @number, @label)',
		{
			['@identifier']   = xPlayer2.identifier,
			['@number'] = number,
			['@label'] = number
		})

		TriggerClientEvent("esx-sim-npwd:sendNotification", _source, 'inform', _U('gaveAway', number))
		TriggerClientEvent("esx-sim-npwd:sendNotification", target, 'inform', _U('receivedSim', number))
	end)
end)