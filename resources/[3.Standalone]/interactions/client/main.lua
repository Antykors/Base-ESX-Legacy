dragStatus = {}
local isHandcuffed = false
dragStatus.isDragged =  false
local ox_inventory = exports.ox_inventory
local ox_target = exports.ox_target

function loadanimdict(dictname)
	if not HasAnimDictLoaded(dictname) then
		RequestAnimDict(dictname) 
		while not HasAnimDictLoaded(dictname) do 
			Citizen.Wait(1)
		end
	end
end

RegisterNetEvent('interactions:handcuff')--cuff/uncuff
AddEventHandler('interactions:handcuff', function(playerheading, playerlocation, playerCoords)
	isHandcuffed = not isHandcuffed
	local playerPed = PlayerPedId()

	if isHandcuffed then
		if Config.npwd then 
			exports.npwd:setPhoneDisabled(true)
		end
		if (not IsPedDeadOrDying(playerPed, true)) then
			local x, y, z = table.unpack(playerCoords + playerlocation * 1.0)
			SetEntityCoords(playerPed, x, y, z)
			SetEntityHeading(playerPed, playerheading)
			Citizen.Wait(250)
			loadanimdict('mp_arrest_paired')
			TaskPlayAnim(playerPed, 'mp_arrest_paired', 'crook_p2_back_right', 8.0, -8, 3000, 2, 0, 0, 0, 0)
		end
		loadanimdict('mp_arresting')
		TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0)

		SetEnableHandcuffs(playerPed, true)
		DisablePlayerFiring(playerPed, true)
		SetCurrentPedWeapon(playerPed, `WEAPON_UNARMED`, true) --unarm player
		SetPedCanPlayGestureAnims(playerPed, false)
		DisplayRadar(false)
	else
		dragStatus.isDragged = false
		DetachEntity(playerPed, true, false)
		if Config.npwd then 
			exports.npwd:setPhoneDisabled(false)
		end
		if (not IsPedDeadOrDying(playerPed, true)) then
			local x, y, z   = table.unpack(playerCoords + playerlocation * 1.0)
			SetEntityCoords(playerPed, x, y, z)
			SetEntityHeading(playerPed, playerheading)
			Citizen.Wait(250)
			loadanimdict('mp_arresting')
			TaskPlayAnim(playerPed, 'mp_arresting', 'b_uncuff', 8.0, -8, 3500, 2, 0, 0, 0, 0)
		end
		SetEnableHandcuffs(playerPed, false)
		DisablePlayerFiring(playerPed, false)
		SetPedCanPlayGestureAnims(playerPed, true)
		DisplayRadar(true)
		RemoveAnimDict('mp_arresting')
		RemoveAnimDict('mp_arrest_paired')
		ClearPedTasks(playerPed)
		ClearPedSecondaryTask(playerPed)
	end
end)


RegisterNetEvent('interactions:escort')-- escort 
AddEventHandler('interactions:escort', function(dragger)
	if isHandcuffed or IsPedDeadOrDying(PlayerPedId(), true) then
		dragStatus.isDragged = not dragStatus.isDragged
		dragStatus.dragger = dragger
	end
end)

-- escort/unescort
CreateThread(function()
	local wasDragged
	while true do
		if isHandcuffed then -- and (not IsEntityPlayingAnim(PlayerPedId(), 'mp_arresting', 'idle', 3)) then -- after falling player hands get detached the second and not detcting how it should 
			TaskPlayAnim(PlayerPedId(), 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0)
		end
		if dragStatus.isDragged then
			Sleep = 50
			
			local targetPed = GetPlayerPed(GetPlayerFromServerId(dragStatus.dragger))
			if DoesEntityExist(targetPed) and IsPedOnFoot(targetPed) and (isHandcuffed or IsPedDeadOrDying(PlayerPedId(), true)) then
				if not wasDragged then
					if Config.npwd then 
						exports.npwd:setPhoneDisabled(true)
					end
					AttachEntityToEntity(ESX.PlayerData.ped, targetPed, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
					SetEntityCollision(ESX.PlayerData.ped, 1, 1)
					wasDragged = true
				else
					Wait(1000)
				end
			else
				wasDragged = false
				dragStatus.isDragged = false
				DetachEntity(ESX.PlayerData.ped, true, false)
				if Config.npwd then 
					exports.npwd:setPhoneDisabled(false)
				end
			end
		elseif wasDragged then
			wasDragged = false
			DetachEntity(ESX.PlayerData.ped, true, false)
			if Config.npwd then 
				exports.npwd:setPhoneDisabled(false)
			end
			
		end	
		Wait(1500)
	end
end)

--put in vehicule
RegisterNetEvent('interactions:putInVehicle')
AddEventHandler('interactions:putInVehicle', function()
	if isHandcuffed then
		local playerPed = PlayerPedId()
		local vehicle, distance = ESX.Game.GetClosestVehicle()

		if vehicle and distance < 5 then
			local maxSeats, freeSeat = GetVehicleMaxNumberOfPassengers(vehicle)

			for i=maxSeats - 1, 0, -1 do
				if IsVehicleSeatFree(vehicle, i) then
					freeSeat = i
					break
				end
			end

			if freeSeat then
				TaskWarpPedIntoVehicle(playerPed, vehicle, freeSeat)
				dragStatus.isDragged = false
			end
		end
	end
end)

--drag out form vehicule
RegisterNetEvent('interactions:OutVehicle')
AddEventHandler('interactions:OutVehicle', function()
	local GetVehiclePedIsIn = GetVehiclePedIsIn
	local IsPedSittingInAnyVehicle = IsPedSittingInAnyVehicle
	local TaskLeaveVehicle = TaskLeaveVehicle
	if IsPedSittingInAnyVehicle(ESX.PlayerData.ped) then
		local vehicle = GetVehiclePedIsIn(ESX.PlayerData.ped, false)
		TaskLeaveVehicle(ESX.PlayerData.ped, vehicle, 64)
	end
end)


--looks if a player is inside vehicule if true returns his pedid
local ped_in_vehicle = nil
function isPlayerInVehi(entity)
	local maxSeats, occupiedSeat = GetVehicleMaxNumberOfPassengers(entity)
	for i=maxSeats - 1, 0, -1 do
		if not IsVehicleSeatFree(entity, i) then
			occupiedSeat = i
			break
		end
	end
	
	if occupiedSeat then
		return GetPedInVehicleSeat(entity, occupiedSeat)
	end
end 

function msg_player_not_nearby()
	lib.notify({
		id = 'no_player_nearby',
		title = 'ERROR',
		description = 'No players nearby',
		position = 'top',
		style = {
			backgroundColor = '#141517',
			color = '#909296'
		},
		icon = 'ban',
		iconColor = '#C53030'
	})
end

function msg_no_card(cardName)
	lib.notify({
		id = 'msg_no_card',
		title = 'ERROR',
		description = 'you do not have an '..cardName.." in your pocket",
		position = 'top',
		style = {
			backgroundColor = '#141517',
			color = '#909296'
		},
		icon = 'ban',
		iconColor = '#C53030'
	})
end

function msg_card_shown(title, desc)
	lib.notify({
		title = title,
		position = 'top',
		description = desc,
		type = 'success'
	})
end

function show_card(data)
	player = NetworkGetPlayerIndexFromPed(data.entity)
	
	local item_name=data.name
	
	local card_type  --types that are defined in jsfour-idcard 
	if item_name=="idcard" then
		card_type=nil
	elseif item_name=="farmlicense" then
		card_type="weapon"
	elseif item_name=="drivers_license" then
		card_type="driver"
	end

	local card_name
	if item_name=="farmlicense" then --to get the same item names everywhere :)
		card_name = "WEAPON LICENSE"
	elseif item_name=="drivers_license" then
		card_name = "DRIVERS LICENSE"
	elseif item_name=="idcard" then
		card_name = string.upper(item_name)
	end

	local cards = ox_inventory:Search('slots', item_name)
	if #cards > 0 then 
		local showFake, lastCard = true, {}
		for _, k in pairs(cards) do
			if ESX.GetPlayerData().identifier == k.metadata.identifier then 
				showFake = false
				lastCard = k
				break
			end
			lastCard = k
		end
		
		if showFake then
			TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(player), card_type, lastCard.metadata)
			msg_card_shown(card_name..' shown', 'you shown a fake '..card_name..', look at them before showing them')
		else
			TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(player), card_type, lastCard.metadata)
			msg_card_shown(card_name..' shown', 'your '..card_name..' is  shown successfully')
		end
	else 
		msg_no_card(card_name)
	end
end

local options = {
    	{
            name = 'cuff',
            onSelect = function(data)
				local player = PlayerPedId()
				local playerHeading = GetEntityHeading(player)
				local playerLocation = GetEntityForwardVector(player)
				local playerCoords = GetEntityCoords(player)
				
				local shouldStartAnimation = lib.callback.await('interactions:handcuff', false, GetPlayerServerId(NetworkGetPlayerIndexFromPed(data.entity)), playerHeading, playerLocation, playerCoords)
				if shouldStartAnimation then
					loadanimdict('mp_arrest_paired')
					TaskPlayAnim(player, 'mp_arrest_paired', 'cop_p2_back_right', 8.0, -8, 3000, 2, 0, 0, 0, 0)
					ClearPedTasks(player)
					RemoveAnimDict('mp_arrest_paired')
				end
            end,
            icon = 'fa-solid fa-handcuffs',
            label = 'cuff',
			distance = 2,
            canInteract = function(entity, coords, distance)
                return (not IsPedCuffed(entity)) and (not IsPedCuffed(PlayerPedId()))
            end
		},
		{
            name = 'uncaff',
            onSelect = function(data)
				local player = PlayerPedId()
				local playerHeading = GetEntityHeading(player)
				local playerLocation = GetEntityForwardVector(player)
				local playerCoords = GetEntityCoords(player)
				
				local shouldStartAnimation = lib.callback.await('interactions:handcuff', false, GetPlayerServerId(NetworkGetPlayerIndexFromPed(data.entity)), playerHeading, playerLocation, playerCoords)
                if shouldStartAnimation then 
					loadanimdict('mp_arresting')
					TaskPlayAnim(player, 'mp_arresting', 'a_uncuff', 8.0, -8, 4500, 2, 0, 0, 0, 0)
					ClearPedTasks(player)
					RemoveAnimDict('mp_arresting')
				end
            end,
            icon = 'fa-solid fa-handcuffs',
            label = 'uncuff',
			distance = 2,
            canInteract = function(entity, coords, distance)
                return IsPedCuffed(entity) and (not IsPedCuffed(PlayerPedId()))
            end
		}, 
		{
			name = 'escort/unescort',
			onSelect = function(data)
				TriggerServerEvent('interactions:escort', GetPlayerServerId(NetworkGetPlayerIndexFromPed(data.entity)))
			end,
			icon = 'fa-solid fa-hand-fist',
			label = 'escort/unescort',
			distance = 2,
			canInteract = function(entity, coords, distance)
				return (IsPedCuffed(entity) or (IsPedDeadOrDying(entity, true))) and (not IsPedCuffed(PlayerPedId())) 
			end	
		}, 
		{
			name = 'steal',
			onSelect = function(data)
				ox_inventory:openInventory('player', GetPlayerServerId(NetworkGetPlayerIndexFromPed(data.entity)))
			end,
			icon = 'fa-solid fa-people-robbery',
			label = 'steal',
			distance = 2,
			canInteract = function(entity, coords, distance)
				return (IsPedCuffed(entity) or (IsPedDeadOrDying(entity, true))) and (not IsPedCuffed(PlayerPedId())) 
			end	
		}, 
		{
			name = 'put_in_vehicle',
			onSelect = function(data)
				TriggerServerEvent('interactions:putInVehicle',GetPlayerServerId(NetworkGetPlayerIndexFromPed(data.entity)))
			end,
			icon = 'fa-solid fa-car',
			label = 'put in vehicle',
			distance = 2,
			canInteract = function(entity, coords, distance)
				return (IsPedCuffed(entity) or (IsPedDeadOrDying(entity, true))) and (not IsPedCuffed(PlayerPedId())) 
			end	
		}, 
	}

local vehicle_options = {
{
	name = 'OutVehicle',
	onSelect = function(data)
		if ped_in_vehicle then
			TriggerServerEvent('interactions:OutVehicle', GetPlayerServerId(NetworkGetPlayerIndexFromPed(ped_in_vehicle)))
		end
	end,
	icon = 'fa-solid fa-people-pulling',
	label = 'drag out from vehicle',
	canInteract = function(entity, distance, coords, name, bone)
		ped_in_vehicle = isPlayerInVehi(entity)
		local flag = false
		if ped_in_vehicle then 
			flag = IsPedCuffed(ped_in_vehicle)
		end
		return flag and (not IsPedCuffed(PlayerPedId()))
		
	end
	}
}

ox_target:addGlobalPlayer(options)
ox_target:addGlobalVehicle(vehicle_options)