TriggerEvent('esx_society:registerSociety', 'lost', 'Lost', 'society_lost', 'society_lost', 'society_lost', {type = 'public'})


-- Here defines the registering of thes stashes defined in the config
AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        for _,v in pairs(Config.Stashes) do
            exports.ox_inventory:RegisterStash(v.name, v.label, v.slots, v.weight, v.specific, v.faction, v.Pos)
        end
    end
end)