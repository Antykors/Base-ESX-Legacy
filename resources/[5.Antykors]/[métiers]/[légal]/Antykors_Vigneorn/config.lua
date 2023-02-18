Config = {}

Config.Locale = "fr"

Config.DrawDistance = 10.0
Config.MarkerSize   = {x = 1.0, y = 1.0, z = 0.1}
Config.MarkerColor  = {r = 255, g = 255, b = 255}
Config.MarkerType   = 1


Config.Job = "vigneron" -- set nil to not be locked by a job // "job" for locked for a specified job // {['job'] = 2} for a specific grade in a job You can even set {['job1'] = 3, ['job2'] = 4} for mutiple jobs and grades
Config.Name = GetCurrentResourceName()
Config.Crafting = true -- defines if crafting is enabled or not (true/false)
Config.CraftingPos = vector3(-50.7, 1911.1, 195.5) -- defines where the crafting menu is located

Config.Blip = {
    Pos = {x = -1889.1, y = 2051.2, z = 140.9}, --defines where the blip is located
    Sprite = 121, -- define the sprite used by the blip (see https://docs.fivem.net/docs/game-references/blips/#blips for references)
    Color = 29, -- defines the color of the blip (see https://docs.fivem.net/docs/game-references/blips/#blip-colors for references)
    Display = 4, -- defines the display parameter of the blip (0 and 1 doesn't show the blip // 2 is on minimap and map // 4 is only on map // 5 is only on minimap)
    Scale = 0.5, -- defines the scale of the blip (default value when not indicated is 1.0)
    Text = "Vigneron", -- defines what the blip should be named
}

-- Defines the zones for specific action/menus
Config.Zones = {
    {
        Pos   = vector3(-1889.1,2051.2,140.9), -- defines where the boss menu is
        Name  = "boss", -- /!\ DO NOT TOUCH /!\
    },
    --[[{
        Pos   = vector3(105.1,-1303.3,28.7), -- defines where a zone is located /!\ STASHES ARE DEFINED IN CONFIG.STASHES /!\
        Name  = "cloakroom", -- used to decide wich zone to open in main.lua
    }]]--
}

-- Defines the stashes
Config.Stashes = {
    {
        Pos = vector3(-1925.5,2048.2,140.8), -- Defines the placement of the stashe
        name = "stashe_"..Config.Name, -- DO NOT TOUCH
        label = "Coffre", -- define the name of the stashe when opening the menu
        slots = 20, -- define number of slots available (diffrent items)
        weight = 100000, -- in grams (100 000 = 100 Kg)
        specific = nil, -- set to true for one per users (by identifier) // set nil for a shared stashe // "char1:licence" for a specific person
        job = Config.Job, -- see config.job
        enabled = true -- used to defined if stashe is enabled or disabled
    },
    {
        Pos = vector3(-1928.7,2059.6,140.8),
        name = "stashe_"..Config.Name.."_personnal", -- DO NOT TOUCH
        label = "Coffre personnel",
        slots = 20,
        weight = 100000,
        specific = true, -- user specific
        job = nil, -- public
        enabled = true
    },
    {
        Pos = vector3(0.0,0.0,0.0),
        name = "stashe_"..Config.Name.."_freezer", -- DO NOT TOUCH
        label = "Frigo",
        slots = 20,
        weight = 100000,
        specific = nil, -- shared
        job = Config.Job, -- for specified job
        enabled = false
    }
}

-- Defines the craftables items
Config.Craft = {
    {
        Item = "jusraisinrouge", -- define item name to be crafted (ox_inventory)
        Label = "Jus de raisins rouges", -- define the name for menus
        Fabrication = { -- here define the items needed for the crafting of item
            {value = 'bottle', label = "Bouteille vide", remove = true}, -- value needs to be the name in ox_inventory items // label is for notification if user don't have item 
                                                                    -- // remove is if the item needs to be removed from inventory
            {value = 'raisinrouge', label = "Raisin rouge", remove = true}
        },
    },

    {
        Item = "jusraisinblanc", -- define item name to be crafted (ox_inventory)
        Label = "Jus de raisins blancs", -- define the name for menus
        Fabrication = { -- here define the items needed for the crafting of item
            {value = 'bottle', label = "Bouteille vide", remove = true},
            {value = 'raisinblanc', label = "Raisin blanc", remove = true}
        },
    },

    {
        Item = "vinrouge", -- define item name to be crafted (ox_inventory)
        Label = "Bouteille de vin rouge", -- define the name for menus
        Fabrication = { -- here define the items needed for the crafting of item
            {value = 'jusraisinrouge', label = "Jus de raisins rouge", remove = true},
            {value = 'raisinrouge', label = "Raisin rouge", remove = true}
        },
    },

    {
        Item = "vinblanc", -- define item name to be crafted (ox_inventory)
        Label = "Bouteille de vin blanc", -- define the name for menus
        Fabrication = { -- here define the items needed for the crafting of item
            {value = 'jusraisinblanc', label = "Jus de raisins blancs", remove = true},
            {value = 'raisinblanc', label = "Raisin blanc", remove = true}
        },
    },
}

-- Defines the work clothes
Config.Clothes = {
    male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 241,   ['torso_2'] = 1,
        ['arms'] = 0,
        ['pants_1'] = 130,   ['pants_2'] = 0,
        ['shoes_1'] = 25,   ['shoes_2'] = 0,
		['chain_1'] = 0, 	['chain_2'] = 0
    },
    female = {
        ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
        ['torso_1'] = 249,   ['torso_2'] = 1,
        ['arms'] = 0,
        ['pants_1'] = 136,   ['pants_2'] = 0,
        ['shoes_1'] = 25,   ['shoes_2'] = 0,
		['chain_1'] = 0, 	['chain_2'] = 0
    }
}