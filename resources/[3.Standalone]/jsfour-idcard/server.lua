-- Open ID card
RegisterServerEvent('jsfour-idcard:open')
AddEventHandler('jsfour-idcard:open', function(targetID, type, playerData)
	local _source = source
	local identifier = playerData.identifier
	local playerInfo = playerData.playerInfo
	local show = false
	if (playerInfo ~= nil) then
		MySQL.Async.fetchAll('SELECT type FROM user_licenses WHERE owner = @identifier', {['@identifier'] = identifier},
		function (licenses)
			if type ~= nil then
				for i=1, #licenses, 1 do
					if type == 'driver' then
						if licenses[i].type == 'drive' or licenses[i].type == 'drive_bike' or licenses[i].type == 'drive_truck' then
							show = true
						end
					elseif type =='weapon' then
						if licenses[i].type == 'weapon' then
							show = true
						end
					end
				end
			else
				show = true
			end
			if show then
				local array = {
					user = {playerInfo},
					licenses = licenses
				}
				TriggerClientEvent('jsfour-idcard:open', targetID, array, type)
			else --for debug only, should never go into this 
				TriggerClientEvent('ox_lib:notify', _source, {
					type = 'error',
					description = "You don't have that type of license.."
				})
			end
		end)
	end
end)
