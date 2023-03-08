local openActive = false
local isMenuActive = false

Citizen.CreateThread(function()
    while true do

        if not openActive then 
            DisplayRadar(true) -- Set Radar online
        end 

        if isMenuActive and not openActive then 
            SetPauseMenuActive(true) -- Set default pauseMenu true
        else 
            SetPauseMenuActive(false) -- Set default pauseMenu false
        end 

        if (IsControlJustPressed(1,200) or IsControlJustPressed(1,199)) and not openActive then 
            openActive = true -- Set true if it's not true
            isMenuActive = false -- Set Menu disable
            SetPauseMenuActive(false) -- Set default pauseMenu false
            DisplayRadar(false) -- Set Radar disable

            -- Send Datas 
            SendNUIMessage({
                action = "uiEnabled",
                ServerName = config.ServerName,
                Sections = config.Sections,
                Buttons = config.Buttons,
                rules = config.rules,
                placeHolders = config.placeHolders,
                discordLink = config.discordLink,
                timeText = config.time,
                language = config.server_language
            })

            SetNuiFocus(true, true)

            -- Get PlayersData 
            ESX.TriggerServerCallback('getPlayerData', function(datas)
                SendNUIMessage({playerDatas = datas, activePlayersNumber = #GetActivePlayers()})
            end)

            -- Get Playtime  
            ESX.TriggerServerCallback('getPlayTime', function(time)
                SendNUIMessage({onlinePlayTime = time})
            end)
        end 

        -- Resume game if you press ESCAPE and pauseMenu is active 
        if IsControlJustPressed(1,200) and IsPauseMenuActive() then 
            resumeGame()
        end

        Wait(0)
    end
end)

-- Functions
function resumeGame()
    openActive = false
    isMenuActive = false
    SendNUIMessage({action = "uiDisabled",})
    SetNuiFocus(false, false)
end

-- Callbacks
RegisterNUICallback('resumeGame', resumeGame)

-- ShowMap
RegisterNUICallback('showMap', function()
    ActivateFrontendMenu(GetHashKey('FE_MENU_VERSION_MP_PAUSE'),0,-1)
    isMenuActive = true
    SendNUIMessage({action = "uiDisabled",})
    SetNuiFocus(false, false)
end)

-- ShowSettings
RegisterNUICallback('showSettings', function()
    ActivateFrontendMenu(GetHashKey('FE_MENU_VERSION_LANDING_MENU'),0,-1)
    isMenuActive = true
    SendNUIMessage({action = "uiDisabled",})
    SetNuiFocus(false, false)
end)

-- Disconnect
RegisterNUICallback('disconnect', function()
    ESX.TriggerServerCallback('disconnectPlayer', function(source) end)
end)

-- Get Report
RegisterNUICallback('sendReport', function(reportMessage)
    ESX.TriggerServerCallback('sendReportToDiscord', function(source) end, reportMessage)
end)