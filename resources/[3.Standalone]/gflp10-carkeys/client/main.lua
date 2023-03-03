CreateThread(function()
    while GetResourceState('ox_inventory') ~= 'started' do
        Wait(100)
    end
    local Inventory = exports.ox_inventory
    Inventory:displayMetadata('plate', Lang['plate'])
end)

CreateThread(function()
    while true do
        Wait(0)
		local ped = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(ped, false)
		--local engineStatus
		
		--if IsPedGettingIntoAVehicle(ped) then
			--engineStatus = (GetIsVehicleEngineRunning(vehicle))
			--if not (engineStatus) then 
				--SetVehicleEngineOn(vehicle, false, true, true)
				--DisableControlAction(2, 71, true)
			--end
		--end
		
		if IsPedInAnyVehicle(ped, false) and not IsEntityDead(ped) and (not GetIsVehicleEngineRunning(vehicle)) then
			DisableControlAction(2, 71, true)
		end
		
		if IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) then
			if (GetIsVehicleEngineRunning(vehicle)) then
				Wait(150)
				SetVehicleEngineOn(vehicle, true, true, false)
				TaskLeaveVehicle(ped, vehicle, 0)
			else
				TaskLeaveVehicle(ped, vehicle, 0)
			end
		end
    end
end)


CreateThread(function()
    while GetResourceState('ox_target') ~= 'started' do
        Wait(100)
    end

    local pedHash = GetHashKey(Config.KeyShop.Ped.Model)

    RequestModel(pedHash)                      
    while not HasModelLoaded(pedHash) do Wait(1) end

    local ped = CreatePed(4, pedHash, Config.KeyShop.Ped.Position, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)

    exports.ox_target:addModel(Config.KeyShop.Ped.Model, {
        {
            icon = 'fas fa-key',
            label = Lang['open_keyshop'],
            onSelect = function()
				OpenKeyShop()
			end,
        }
    })
end)

CreateThread(function()
    local blip = AddBlipForCoord(Config.KeyShop.Ped.Position)
    SetBlipSprite(blip, 811)
    SetBlipScale(blip, 0.8)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Lang['shop_title'])
    EndTextCommandSetBlipName(blip)
end)

AddEventHandler('carkeys:client:useKey', function(data)
    local plate = data.metadata.plate
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    local engineStatus = GetIsVehicleEngineRunning(veh)

    while #plate < 8 do
        plate = plate .. ' '
    end

    local vehicle = GetVehicleInDistanceByPlate(plate, Config.LockingRange)
    if vehicle and not IsPedInAnyVehicle(ped, false) then
        inVehicle = false
        ToggleVehicleLock(vehicle)
    elseif vehicle and IsPedInAnyVehicle(ped, false) and not engineStatus then
        SetVehicleEngineOn(vehicle, true, false, true)
        Config.Notification(Lang['engine_on'])
    elseif vehicle and IsPedInAnyVehicle(ped, false) and engineStatus then
        SetVehicleEngineOn(vehicle, false, false, true)
        Config.Notification(Lang['engine_off'])
    else
        Config.Notification(Lang['not_your_vehicle'])
    end
end)

AddEventHandler('carkeys:context:yesno', function(data)
    lib.hideContext(false)
    lib.registerContext({
        id = 'carkeys_yesno_menu',
        title = Lang['buy_key'],
        options = {
            {
                title = Lang['yes'],
                event = 'carkeys:client:buyKey',
                args = {
                    plate = data.plate
                }
            },
            {
                title = Lang['no'],
                menu = 'carkeys_context_shop'
            }
        }
    })
    lib.showContext('carkeys_yesno_menu')
end)

AddEventHandler('carkeys:client:buyKey', function(data)
    TriggerServerEvent('carkeys:server:buyKey', data.plate)
end)
