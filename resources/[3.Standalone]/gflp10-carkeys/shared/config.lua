Config = {
    LockingRange = 5.0,
    CycleVehicleClass = 13,
    Keyitem = "carkey",
    Locale = 'fr',
    KeyPrice = 100,
    Locales = {
        ['en'] = {
            ['lock_vehicle'] = 'Vehicle locked',
            ['unlock_vehicle'] = 'Vehicle unlocked',
            ['engine_on'] = 'Engine on',
            ['engine_off'] = 'Engine off',
            ['plate'] = 'Plate',
            ['open_keyshop'] = 'Open keyshop',
            ['shop_title'] = 'Keyshop',
            ['not_your_vehicle'] = 'This is not your vehicle',
            ['bought_key'] = 'You bought a key for your vehicle',
            ['not_enough_money'] = 'You do not have enough money',
            ['buy_key'] = 'Do you want to buy a key for your vehicle?',
            ['yes'] = 'Yes',
            ['no'] = 'No'
        },
        ['fr'] = {
            ['lock_vehicle'] = 'Véhicule verrouillé',
            ['unlock_vehicle'] = 'Véhicule déverrouillé',
            ['engine_on'] = 'Moteur allumé',
            ['engine_off'] = 'Moteur éteint',
            ['plate'] = 'Plaque',
            ['open_keyshop'] = 'Ouvrir le magasin de clés',
            ['shop_title'] = 'Magasin de clés',
            ['not_your_vehicle'] = 'Ce n\'est pas votre véhicule',
            ['bought_key'] = 'Vous avez acheté une clé pour votre véhicule',
            ['not_enough_money'] = 'Vous n\'avez pas assez d\'argent',
            ['buy_key'] = 'Vous souhaitez acheter une clé pour votre véhicule?',
            ['yes'] = 'Oui',
            ['no'] = 'Non'
        },
        ['de'] = {
            ['lock_vehicle'] = 'Fahrzeug abgeschlossen',
            ['unlock_vehicle'] = 'Fahrzeug aufgeschlossen',
            ['engine_on'] = 'Motor an',
            ['engine_off'] = 'Motor aus',
            ['plate'] = 'Kennzeichen',
            ['open_keyshop'] = 'Autoschlüsselladen öffnen',
            ['shop_title'] = 'Autoschlüsselladen',
            ['not_your_vehicle'] = 'Dies ist nicht dein Fahrzeug',
            ['bought_key'] = 'Du hast einen Schlüssel für dein Fahrzeug gekauft',
            ['not_enough_money'] = 'Du hast nicht genug Geld',
            ['buy_key'] = 'Möchtest du einen Schlüssel für dein Fahrzeug kaufen?',
            ['yes'] = 'Ja',
            ['no'] = 'Nein'
        }
    },
    Notification = function(message)
        ESX.ShowNotification(message)
    end,
    KeyShop = {
        Ped = {
            Model = 'a_m_m_business_01',
            Position = vector4(170.0408, -1799.5764, 28.3159, 322.9936)
        }
    }
}

Lang = Config.Locales[Config.Locale]