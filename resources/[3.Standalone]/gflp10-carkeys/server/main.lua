
local function AddCarkey(source, plate)
    exports.ox_inventory:AddItem(source, Config.Keyitem, 1, { plate = plate })
end
exports('AddCarkey', AddCarkey)

lib.callback.register('carkeys:callback:getPlayerVehicles', function(source, target)
    local xPlayer = ESX.GetPlayerFromId(source)
    local vehicles = {}
    local result = MySQL.query.await('SELECT * FROM owned_vehicles WHERE owner = ?', { xPlayer.identifier })
    if result then
        for k, v in pairs(result) do
            local vehicle = json.decode(v.vehicle)
            vehicles[#vehicles + 1] = {
                plate = vehicle.plate,
                model = vehicle.model
            }
        end
        return vehicles
    end
    return false        
end)

RegisterNetEvent('carkeys:server:buyKey', function(plate)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    print(plate)

    MySQL.single('SELECT owner FROM owned_vehicles WHERE plate = ?', { plate }, function(result)
        if result then
            if xPlayer.getMoney() >= Config.KeyPrice then
                xPlayer.removeMoney(Config.KeyPrice)
                exports['gflp10-carkeys']:AddCarkey(_source, plate)
                xPlayer.showNotification(Lang['bought_key'])
            else
                xPlayer.showNotification(Lang['not_enough_money'])
            end
        else
            xPlayer.showNotification(Lang['not_your_vehicle'])
        end
    end)
end)