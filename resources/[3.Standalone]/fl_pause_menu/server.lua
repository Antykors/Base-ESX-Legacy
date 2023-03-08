local joinTime = 0

-- IsPlayerLoaded
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function()
    joinTime = os.time()
end)

-- PlayerData Callback
ESX.RegisterServerCallback('getPlayerData', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

	if not xPlayer then
		return
	end

    Datas = {
        name = xPlayer.getName(),
        job = xPlayer.getJob().name,
        cash = xPlayer.getMoney(),
        id = source,
    }

    cb(Datas)
end)


-- Disconnect Callback
ESX.RegisterServerCallback('disconnectPlayer', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.kick('Goodbye!') -- Disconnect the player
    timeNow = 0 -- Set back to zero
end)

-- GetPlayTime Callback
ESX.RegisterServerCallback('getPlayTime', function(source, cb)
    local playerTime = ConvertToMinutes(os.time() - joinTime)
    cb(playerTime)
end)

-- Send Report To Discord
ESX.RegisterServerCallback('sendReportToDiscord', function(source, cb, message)
    local xPlayer = ESX.GetPlayerFromId(source)
    if #message[1] == 0 or #message[2] == 0 then
        TriggerClientEvent('esx:showNotification', source, config.discord_error_message, "error")
    else 
        sendToDiscord(config.discord_WebhookColor, message[2], message[1], config.discord_footer_message .. xPlayer.getName(), config.discord_Webhook, config.discord_WebhookName)
    end 
end)


function ConvertToMinutes(sec)
    return math.floor((sec % 3600) / 60)
end

function sendToDiscord(color, name, message, footer, url, webHookName)
    local embed = {
          {
              ["color"] = color,
              ["title"] = "**".. name .."**",
              ["description"] = message,
              ["footer"] = {
                  ["text"] = footer,
              },
          }
      }
  
    PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({username = webHookName, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end

