RegisterNUICallback('init', function(_, cb)
    cb(1)

    SendNUIMessage({
        action = 'loadLocales',
        data = {}
    })

	local JSON = LoadResourceFile(cache.resource, ('locales/%s.json'):format(GetConvar('ox:locale', 'fr'))) or LoadResourceFile(cache.resource, 'locales/fr.json')

    SendNUIMessage({
        action = 'setLocale',
        data = JSON and json.decode(JSON) or {}
    })
end)
