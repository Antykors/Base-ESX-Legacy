-- remove item from inventory
RegisterServerEvent(GetCurrentResourceName()..":removeItem")
AddEventHandler(GetCurrentResourceName()..":removeItem", function(item)
    local _source = source
    local _item = item
    exports.ox_inventory:RemoveItem(_source, _item, 1)
end)

-- add item to the inventory
RegisterServerEvent(GetCurrentResourceName()..":addItem")
AddEventHandler(GetCurrentResourceName()..":addItem", function(item)
    local _source = source
    local _item = item
    local ItemFound = false 
    for k,v in pairs(Config.Craft) do 
        if v.Item == _item then 
            ItemFound = true 
            break 
        end
    end
    if ItemFound then 
        exports.ox_inventory:AddItem(_source, _item, 1)
    else
        print("Item " .. _item ..  " not found in config.lua. Is " .. GetPlayerName(_source) .. " trying to cheat?")
    end
end)