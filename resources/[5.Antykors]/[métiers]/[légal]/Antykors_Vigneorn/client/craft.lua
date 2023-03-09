local inZone = false
local currentZone = nil
local menuOpen = false

-- Initialisation
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
    ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)
-- End of initialisation

-- Craft menu
function OpenCraftMenu()
    ESX.UI.Menu.CloseAll()

    local elements = {}
    
    for k,v in pairs(Config.Craft) do
        table.insert(elements, {
            value = v.Item,
            label = v.Label,
            items = v.Fabrication
        })
    end

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'craft_menu',{
        title = _U("craft_menu_title"),
        align = "right",
        elements = elements
    }, function(data, menu)
        local items = data.current.items
        local item = data.current.value
        local label = data.current.label
        local enough = 0
        local invItems = {}
        
        for i=1, #items, 1 do
            table.insert(invItems, exports.ox_inventory:Search('count', items[i].value))
        end

        for i=1, #items, 1 do
            if invItems[i] > 0 then
                enough = enough+1
            end
        end

        if enough >= #items then
            --exports['okokNotify']:Alert(_U("craft_notification_title"), _U("craft_notification_message") .. label, 5000, 'info')
            TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
            menu.close()
            Citizen.Wait(2000)
            ClearPedTasks(PlayerPedId())
            for i=1, #items, 1 do
                if items[i].remove then
                    TriggerServerEvent(GetCurrentResourceName()..":removeItem", items[i].value)
                end
            end
            TriggerServerEvent(GetCurrentResourceName()..":addItem", item)
        else
            for i=1, #items, 1 do
                --exports['okokNotify']:Alert(_U("craft_notification_title"), _U("craft_notification_needs_1") .. items[i].label, 5000, 'warning')
            end
        end
    end, function(data, menu)
        menu.close()
    end)
end
-- End of craft menu

-- Enter/exit marker and keycontrols
Citizen.CreateThread(function()
    while true do
        if Config.Crafting then
            local sleep = 1000
            local xPlayer = ESX.GetPlayerData(PlayerPedId())
            local coords = GetEntityCoords(PlayerPedId())

            
            local distance = #(coords - Config.CraftingPos)
            local x, y, z = table.unpack(Config.CraftingPos)

            if xPlayer.job and xPlayer.job.name == Config.Job then
                if distance < Config.DrawDistance then
                    sleep = 5
                    DrawMarker(Config.MarkerType, x, y, z - 1, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
                    if distance <= Config.MarkerSize.x then
                        inZone = true
                    else
                        inZone = false
                    end
                end

                if inZone then
                    ESX.ShowHelpNotification(_U("open_menu_help"))
                    if IsControlJustReleased(1, 38) then
                        menuOpen = true
                        OpenCraftMenu()
                    end
                else
                    if menuOpen == true then
                        menuOpen = false
                        ESX.UI.Menu.CloseAll()
                    end
                end
            end
            Citizen.Wait(sleep)
        elseif not Config.Crafting then
            Citizen.Wait(10000)
        end
    end
end)
-- end of enter/exit marker and keycontrols