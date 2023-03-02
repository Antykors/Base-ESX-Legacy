local ox_target, ox_inventory = exports.ox_target, exports.ox_inventory

mayor = {
    model = "a_f_y_femaleagent", --The model name. See above for the URL of the list.
    coords = vector3(-533.2113, -218.7788, 37.6497), --HAIR ON HAWICK AVE
    heading = 69.3388, --Must be a float value. This means it needs a decimal and a number after the decimal.
    gender = "female", --Use male or female
    animDict = "amb@code_human_cross_road@male@idle_a", --The animation dictionary. Optional. Comment out or delete if not using.
    animName = "idle_c", --The animation name. Optional. Comment out or delete if not using.
    isRendered = false,
    ped = nil,
}
local mayorOptions = {
    {
        name = 'idcard',
        onSelect = function(data)
            TriggerServerEvent("interactions:cardRequested", data.name)
        end,
        icon = 'fa-solid fa-id-card-clip',
        label = 'request id card, 500$',
        distance = 2,
        canInteract = function(entity, coords, distance)
            return ((not IsPedDeadOrDying(PlayerPedId(), true))) and (not IsPedCuffed(PlayerPedId())) 
        end	
    }, 
    {
        name = 'farmlicense',
        onSelect = function(data)
            TriggerServerEvent("interactions:cardRequested", data.name)
        end,
        icon = 'fa-solid fa-address-card',
        label = 'request weapon license, 500$',
        distance = 2,
        canInteract = function(entity, coords, distance)
            return ((not IsPedDeadOrDying(PlayerPedId(), true))) and (not IsPedCuffed(PlayerPedId())) 
        end	
    }, 
    {
        name = 'drivers_license',
        onSelect = function(data)
            TriggerServerEvent("interactions:cardRequested", data.name)
        end,
        icon = 'fa-solid fa-address-card',
        label = 'request drivers license, 500$',
        distance = 2,
        canInteract = function(entity, coords, distance)
            return ((not IsPedDeadOrDying(PlayerPedId(), true))) and (not IsPedCuffed(PlayerPedId())) 
        end	
    }, 
}

function createblip(coords)
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, 487)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.6)
	SetBlipColour(blip, 23)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName('city hall')
	EndTextCommandSetBlipName(blip)
end

Citizen.CreateThread(function()
	for _, mayor in pairs(Config.mayors) do
    	createblip(mayor.coords)
	end
	while true do
		Citizen.Wait(500)
        local playerCoords = GetEntityCoords(PlayerPedId())
		for _, mayor in pairs(Config.mayors) do
			local dist = #(playerCoords - mayor.coords)
			if dist < 20 and not mayor.isRendered then
				local ped = nearPed(mayor.model, mayor.coords, mayor.heading, mayor.gender, mayor.animDict, mayor.animName, mayor.scenario)
				mayor.ped = ped
				mayor.isRendered = true
				ox_target:addLocalEntity(mayor.ped, mayorOptions)
			end
			
			if dist >= 20 and mayor.isRendered then
					for i = 255, 0, -51 do
						Citizen.Wait(50)
						SetEntityAlpha(mayor.ped, i, false)
					end
				ox_target:removeLocalEntity(mayor.ped, mayorOptions)
				DeletePed(mayor.ped)
				mayor.ped = nil
				mayor.isRendered = false
			end
		end 
	end
end)

function nearPed(model, coords, heading, gender, animDict, animName, scenario)
	local genderNum = 0
    --AddEventHandler('nearPed', function(model, coords, heading, gender, animDict, animName)
	-- Request the models of the peds from the server, so they can be ready to spawn.
	RequestModel(GetHashKey(model))
	while not HasModelLoaded(GetHashKey(model)) do
		Citizen.Wait(1)
	end
	
	-- Convert plain language genders into what fivem uses for ped types.
	if gender == 'male' then
		genderNum = 4
	elseif gender == 'female' then 
		genderNum = 5
	else
		print("No gender provided! Check your configuration!")
	end	

	--Check if someones coordinate grabber thingy needs to subract 1 from Z or not.
    local x, y, z = table.unpack(coords)
    ped = CreatePed(genderNum, GetHashKey(model), x, y, z - 1, heading, false, true)
	SetEntityAlpha(ped, 0, false)
    FreezeEntityPosition(ped, true) --Don't let the ped move.
    SetEntityInvincible(ped, true) --Don't let the ped die.
    SetBlockingOfNonTemporaryEvents(ped, true) --Don't let the ped react to his surroundings.
	--Add an animation to the ped, if one exists.
    RequestAnimDict(animDict)-- to do
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(1)
    end
    TaskPlayAnim(ped, animDict, animName, 8.0, 0, -1, 1, 0, 0, 0)
	
    for i = 0, 255, 51 do
        Citizen.Wait(50)
        SetEntityAlpha(ped, i, false)
    end

	return ped
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

local playerOptions = {
		{
			name = 'idcard',
			onSelect = function(data)
				show_card(data)
			end,
			icon = 'fa-solid fa-id-card-clip',
			label = 'show IDCARD',
			distance = 2,
			canInteract = function(entity, coords, distance)
				return ((not IsPedCuffed(entity)) and (not IsPedDeadOrDying(entity, true))) and (not IsPedCuffed(PlayerPedId())) 
			end	
		}, 
		{
			name = 'farmlicense',
			onSelect = function(data)
				show_card(data)
			end,
			icon = 'fa-solid fa-address-card',
			label = 'show weapon license',
			distance = 2,
			canInteract = function(entity, coords, distance)
				return ((not IsPedCuffed(entity)) and (not IsPedDeadOrDying(entity, true))) and (not IsPedCuffed(PlayerPedId())) 
			end	
		}, 
		{
			name = 'drivers_license',
			onSelect = function(data)
				show_card(data)
			end,
			icon = 'fa-solid fa-address-card',
			label = 'show drivers license',
			distance = 2,
			canInteract = function(entity, coords, distance)
				return ((not IsPedCuffed(entity)) and (not IsPedDeadOrDying(entity, true))) and (not IsPedCuffed(PlayerPedId())) 
			end	
		}, 

	}


ox_target:addGlobalPlayer(playerOptions)

exports('idcard', function(data, slot)
	-- Triggers internal-code to correctly use items.
    -- This adds security, removes the item on use, adds progressbar support, and is necessary for server callbacks.
    ox_inventory:useItem(data, function(data) 
		if data then
			local player, distance = ESX.Game.GetClosestPlayer()
			if distance ~= -1 and distance <= 3.0 then
				TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(player), nil, slot.metadata)
				msg_card_shown('IDCARD shown', 'IDCARD shown successfully')
			else
				msg_player_not_nearby()
			end
		end
	end)
end)

exports('drivers_license', function(data, slot)
    -- Show your ID-card to the closest person
	ox_inventory:useItem(data, function(data) 
		if data then
			local player, distance = ESX.Game.GetClosestPlayer()
			if distance ~= -1 and distance <= 3.0 then
				TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(player), "driver", slot.metadata)
				msg_card_shown('drivers license shown', 'drivers license shown successfully')
			else
				msg_player_not_nearby()
			end
		end
	end)
end)

exports('farmlicense', function(data, slot)
    -- Show your ID-card to the closest person
	ox_inventory:useItem(data, function(data) 
		if data then
			local player, distance = ESX.Game.GetClosestPlayer()
			if distance ~= -1 and distance <= 3.0 then
				TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(player), "weapon", slot.metadata)
				msg_card_shown('weapon license shown', 'weapon license shown successfully')
			else
				msg_player_not_nearby()
			end
		end
	end)
end)