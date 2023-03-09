Config = {}

Config.Locale = "fr"

Config.DrawDistance = 10.0
Config.MarkerSize   = {x = 1.0, y = 1.0, z = 0.1}
Config.MarkerColor  = {r = 255, g = 255, b = 255}
Config.MarkerType   = 1


Config.Faction = "lost" -- set nil to not be locked by a faction // "faction" for locked for a specified faction // {['faction'] = 2} for a specific grade in a faction You can even set {['faction1'] = 3, ['faction2'] = 4} for mutiple factions and grades
Config.Name = GetCurrentResourceName()
Config.Crafting = false -- defines if crafting is enabled or not (true/false)
Config.CraftingPos = vector3(0.0, 0.0, 0.0) -- defines where the crafting menu is located

Config.Blip = {
    Pos = {x = 988.0, y = -95.0, z = 74.8}, --defines where the blip is located
    Sprite = 661, -- define the sprite used by the blip (see https://docs.fivem.net/docs/game-references/blips/#blips for references)
    Color = 40, -- defines the color of the blip (see https://docs.fivem.net/docs/game-references/blips/#blip-colors for references)
    Display = 2, -- defines the display parameter of the blip (0 and 1 doesn't show the blip // 2 is on minimap and map // 4 is only on map // 5 is only on minimap)
    Scale = 0.5, -- defines the scale of the blip (default value when not indicated is 1.0)
    Text = "Club Lost MC", -- defines what the blip should be named
}

-- Defines the zones for specific action/menus
Config.Zones = {
    {
        Pos   = vector3(988.0,-95.0,74.8), -- defines where the boss menu is
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
        Pos = vector3(977.2,-104.1,74.8), -- Defines the placement of the stashe
        name = "stashe_"..Config.Name, -- DO NOT TOUCH
        label = "Coffre", -- define the name of the stashe when opening the menu
        slots = 20, -- define number of slots available (diffrent items)
        weight = 100000, -- in grams (100 000 = 100 Kg)
        specific = nil, -- set to true for one per users (by identifier) // set nil for a shared stashe // "char1:licence" for a specific person
        faction = Config.Faction, -- see config.faction
        enabled = true -- used to defined if stashe is enabled or disabled
    },
    {
        Pos = vector3(971.4,-98.7,74.8),
        name = "stashe_"..Config.Name.."_personnal", -- DO NOT TOUCH
        label = "Coffre personnel",
        slots = 20,
        weight = 100000,
        specific = true, -- user specific
        faction = nil, -- public
        enabled = true
    },
    {
        Pos = vector3(0.0,0.0,0.0),
        name = "stashe_"..Config.Name.."_freezer", -- DO NOT TOUCH
        label = "Frigo",
        slots = 20,
        weight = 100000,
        specific = nil, -- shared
        faction = Config.Faction, -- for specified faction
        enabled = false
    }
}

-- Defines the craftables items
Config.Craft = {
    {
        Item = "weapon_pistol", -- define item name to be crafted (ox_inventory)
        Label = "9mm", -- define the name for menus
        Fabrication = { -- here define the items needed for the crafting of item
            {value = 'water', label = "Eau", remove = true}, -- value needs to be the name in ox_inventory items // label is for notification if user don't have item 
                                                                    -- // remove is if the item needs to be removed from inventory
            {value = 'cola', label = "Coca", remove = true}
        },
    }
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