local function IsVehicleLocked(vehicle)
    local status = GetVehicleDoorLockStatus(vehicle)
    if status == 2 then 
        return true
    end
    return false 
end

local function LockStartAnim(ped, animDict, animLib, vehicle)
    TaskPlayAnim(ped, animDict, animLib, 15.0, -10.0, 1500, 49, 0, false, false, false)
    PlaySoundFromEntity(-1, "Remote_Control_Fob", ped, "PI_Menu_Sounds", 1, 0)
    
    SetVehicleLights(vehicle,2)
    Wait(200)

    SetVehicleLights(vehicle,1)
    Wait(200)

    SetVehicleLights(vehicle,2)        
    Wait(200)
end

local function LockEndAnim(vehicle)
    Wait(200)
    SetVehicleLights(vehicle,1)
    SetVehicleLights(vehicle,0)
    Wait(200)
end

local function GetVehiclesInArea(maxDistance)
    local vehicles = GetGamePool('CVehicle')

    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    
    local nearbyVehicles = {}
    
    for k, entity in pairs(vehicles) do
        local distance = #(coords - GetEntityCoords(entity))

        if distance <= maxDistance then
            nearbyVehicles[#nearbyVehicles + 1] = entity
        end
    end

    return nearbyVehicles
end

function OpenKeyShop()
    local vehicles = lib.callback('carkeys:callback:getPlayerVehicles', nil)

    local options = {}

    for k, v in pairs(vehicles) do
        options[v.plate] = {
            description = GetLabelText(GetDisplayNameFromVehicleModel(v.model)),
            event = 'carkeys:context:yesno',
            args = {
                plate = v.plate
            },
            arrow = true
        }
    end

    lib.registerContext({
        id = 'carkeys_context_shop',
        title = Lang['shop_title'],
        options = options
    })
    lib.showContext('carkeys_context_shop')
    
end

function GetVehicleInDistanceByPlate(plate, maxDistance)
    local vehicles = GetVehiclesInArea(maxDistance)

    for k, vehicle in pairs(vehicles) do
        local vehiclePlate = GetVehicleNumberPlateText(vehicle)
        if vehiclePlate == plate then
            return vehicle
        end
    end

    return false
end

function ToggleVehicleLock(vehicle)
	local ped = PlayerPedId()
    local isCycle = GetVehicleClass(vehicle) == Config.CycleVehicleClass
    local locked = IsVehicleLocked(vehicle)
    local keyFob = nil

    if not isCycle then 
        local prop = GetHashKey('p_car_keys_01')
        local animDict = 'anim@mp_player_intmenu@key_fob@'
        local animLib = 'fob_click'
    
        RequestModel(prop)
        while not HasModelLoaded(prop) do Wait(1) end

        RequestAnimDict(animDict)
        while not HasAnimDictLoaded(animDict) do Wait(1) end
        
        keyFob = CreateObject(prop, 1.0, 1.0, 1.0, 1, 1, 0)
        AttachEntityToEntity(keyFob, ped, GetPedBoneIndex(ped, 57005), 0.09, 0.04, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
        
        LockStartAnim(ped, animDict, animLib, vehicle)
    end
        
	if locked then
		SetVehicleDoorsLocked(vehicle, 1)
        if not isCycle then
            PlayVehicleDoorOpenSound(vehicle, 0)
            PlaySoundFromEntity(-1, "Remote_Control_Open", car, "PI_Menu_Sounds", 1, 0)
        end
		Config.Notification(Lang['unlock_vehicle'])
	elseif not locked then
		SetVehicleDoorsLocked(vehicle, 2)
        if not isCycle then
            PlayVehicleDoorCloseSound(vehicle, 0)
            PlaySoundFromEntity(-1, "Remote_Control_Close", car, "PI_Menu_Sounds", 1, 0)
        end
		Config.Notification(Lang['lock_vehicle'])
	end

    if not isCycle then	
        LockEndAnim(vehicle)
        DeleteEntity(keyFob)
    end
end