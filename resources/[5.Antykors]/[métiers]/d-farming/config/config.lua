Config = {}
Config.Locale = 'en'

Config.ESXLegacy = true

Config.RadiusSpots = {
    {
        -- Blipname
        showblip = false,
        blipname = "Récolte de raisins rouges",
        blip = 130,
        blipcolor = 7,
        blipscale = 0.5,
        -- show radius on the map while in range
        showradius = true,
        -- Coords
        pos = vector3(-1878.6, 2132.4, 127.9),
        radius = 25.0, -- Radius where you can mine / props spawn .  Dont forget the .0 after the number
        cooldown = 1000, -- in Miniliseconds
        -- Marker
        markertype = 25,
        markercolor = {
            red = 255,
            blue = 255,
            green = 255,
        },
        markersize = 3.0, -- dont forget there .0 here aswell :)
        showmarkerdistance = 50,
        -- Animation
        anim = {
            animDict = "random@mugging4",
            anim = "struggle_loop_b_thief",
            flags = 49,
            task = nil,
        },
        -- Job
        job = 'vigneron',
        joblabel = "Vigneron",
        rang = 0,

        farmlabel = "Appuyez sur ~INPUT_CONTEXT~ pour commencer à récolter du raisin rouge",
        -- Items
        requireditem = "epinette",
        farmtime = 5000,
        barlabel = "Cueillette",
        items = {
            {
                id = 1,
                item = "raisinrouge",
                minamount = 1,
                maxamount = 5,
            },
        },
    },

    {
        -- Blipname
        showblip = false,
        blipname = "Récolte de raisins blancs",
        blip = 130,
        blipcolor = 7,
        blipscale = 0.5,
        -- show radius on the map while in range
        showradius = true,
        -- Coords
        pos = vector3(-1812.4, 2131.4, 126.3),
        radius = 15.0, -- Radius where you can mine / props spawn .  Dont forget the .0 after the number
        cooldown = 1000, -- in Miniliseconds
        -- Marker
        markertype = 25,
        markercolor = {
            red = 255,
            blue = 255,
            green = 255,
        },
        markersize = 3.0, -- dont forget there .0 here aswell :)
        showmarkerdistance = 50,
        -- Animation
        anim = {
            animDict = "random@mugging4",
            anim = "struggle_loop_b_thief",
            flags = 49,
            task = nil,
        },
        -- Job
        job = 'vigneron',
        joblabel = "Vigneron",
        rang = 0,

        farmlabel = "Appuyez sur ~INPUT_CONTEXT~ pour commencer à récolter du raisin blanc",
        -- Items
        requireditem = "epinette",
        farmtime = 5000,
        barlabel = "Cueillette",
        items = {
            {
                id = 1,
                item = "raisinblanc",
                minamount = 1,
                maxamount = 5,
            },
        },
    },
}

Config.MarkerSpots = {
    --[[{
        -- Blipname
        showblip = true,
        blipname = "Marker Test",
        blip = 130,
        blipcolor = 7,
        blipscale = 0.7,
        -- show radius on the map while in range
        showradius = true,
        -- Coords
        pos = vector3(2220.72, 5582.52, 53.81),
        radius = 25.0, -- Radius where you can mine / props spawn .  Dont forget the .0 after the number

        -- Marker
        markertype = 25,
        markercolor = {
            red = 255,
            blue = 255,
            green = 255,
        },
        markersize = 3.0, -- dont forget there .0 here aswell :)
        showmarkerdistance = 50,
        -- Animation
        anim = {
            animDict = "random@mugging4",
            anim = "struggle_loop_b_thief",
            flags = 49,
            task = nil,
        },
        -- Job
        job = nil,
        joblabel = nil,
        rang = 1,
        --
        farmlabel = "Press ~INPUT_CONTEXT~ to start mining",
        -- Items
        requireditem = nil,
        farmtime = 5000,
        barlabel = "Example Barlabel",
        items = {
            {
                id = 1,
                item = "bread",
                minamount = 1,
                maxamount = 10,
            },
            {
                id = 1,
                item = "water",
                minamount = 1,
                maxamount = 10,
            },
        },
    },
    {
        -- Blipname
        showblip = true,
        blipname = "Static Marker Test",
        blip = 130,
        blipcolor = 7,
        blipscale = 0.7,
        -- show radius on the map while in range
        showradius = false,
        -- Coords
        pos = vector3(99.73188, 6535.226, 31.65564),
        radius = 25.0, -- Radius where you can mine / props spawn .  Dont forget the .0 after the number

        -- Marker
        markertype = 25,
        markercolor = {
            red = 255,
            blue = 255,
            green = 255,
        },
        static = true,
        cooldown = 1000, -- in Miniliseconds
        markersize = 3.0, -- dont forget there .0 here aswell :)
        showmarkerdistance = 50,
        -- Animation
        anim = {
            animDict = "random@mugging4",
            anim = "struggle_loop_b_thief",
            flags = 49,
            task = nil,
        },
        -- Job
        job = nil,
        joblabel = nil,
        rang = 1,
        --
        farmlabel = "Press ~INPUT_CONTEXT~ to start mining",
        -- Items
        requireditem = nil,
        farmtime = 5000,
        barlabel = "Example Barlabel",
        items = {
            {
                id = 1,
                item = "bread",
                minamount = 1,
                maxamount = 10,
            },
            {
                id = 1,
                item = "water",
                minamount = 1,
                maxamount = 10,
            },
        },
    },]]--
}

Config.PropSpots = {
    --[[{
        -- Blipname
        showblip = true,
        blipname = "Prop Test Mit Prop delete",
        blip = 130,
        blipcolor = 7,
        blipscale = 0.7,
        -- show radius on the map while in range
        showradius = true,
        -- Coords
        pos = vector3(427, 6531, 27),
        radius = 25.0, -- Radius where you can mine / props spawn .  Dont forget the .0 after the number

        -- Prop
        prop = 'prop_weed_02',
        -- How many props should spawn to mine
        propamount = 10,
        distancebetweenprops = 5.0,
        delete = {
            delay = 3000,
        },
        -- Animation
        anim = {
            animDict = "random@mugging4",
            anim = "struggle_loop_b_thief",
            flags = 49,
            task = nil,
        },
        -- Job
        job = 'police',
        joblabel = "Police",
        rang = 1,
        --
        farmlabel = "Press ~INPUT_CONTEXT~ to start mining",
        -- Items
        -- Set this to nil if you dont want to have an item
        requireditem = nil,
        farmtime = 5000,
        barlabel = "Example Barlabel",
        items = {
            {
                id = 1,
                item = "bread",
                minamount = 1,
                maxamount = 10,
            },
            {
                id = 1,
                item = "water",
                minamount = 1,
                maxamount = 10,
            },
        },
    },
    {
        -- Blipname
        showblip = true,
        blipname = "Prop Test Mit Cooldown",
        blip = 130,
        blipcolor = 7,
        blipscale = 0.7,
        -- show radius on the map while in range
        showradius = true,
        -- Coords
        pos = vector3(1409.196, 6523.516, 18.24316),
        radius = 25.0, -- Radius where you can mine / props spawn .  Dont forget the .0 after the number

        -- Prop
        prop = 'prop_weed_02',
        -- How many props should spawn to mine
        propamount = 10,
        distancebetweenprops = 5.0,
        cooldown = 5000, -- in Miniliseconds
        -- Animation
        anim = {
            animDict = "random@mugging4",
            anim = "struggle_loop_b_thief",
            flags = 49,
            task = nil,
        },
        -- Job
        job = nil,
        joblabel = nil,
        rang = 1,
        --
        farmlabel = "Press ~INPUT_CONTEXT~ to start mining",
        -- Items
        requireditem = nil,
        farmtime = 5000,
        barlabel = "Example Barlabel",
        items = {
            {
                id = 1,
                item = "bread",
                minamount = 1,
                maxamount = 10,
            },
            {
                id = 1,
                item = "water",
                minamount = 1,
                maxamount = 10,
            },
        },
    },]]--
}

Config.ObjectSpots = {
    --[[{
        -- Blipname
        showblip = true,
        blipname = "Object Test",
        blip = 130,
        blipcolor = 7,
        blipscale = 0.7,
        -- show radius on the map while in range
        showradius = true,
        -- Coords
        pos = vector3(147.745, -1035, 29.3),
        radius = 10.0, -- Radius where you can mine / props spawn .  Dont forget the .0 after the number

        -- Prop
        -- This doenst work with every prop, i dont know why.
        obj = {
            models = { 'prop_atm_01', 'prop_atm_02', 'prop_fleeca_atm', 'prop_atm_03' },
            interactRadius = 3.0
        },
        cooldown = 5000, -- in Miniliseconds
        -- Animation
        anim = {
            animDict = "random@mugging4",
            anim = "struggle_loop_b_thief",
            flags = 49,
            task = nil,
        },
        -- Job
        job = nil,
        joblabel = nil,
        rang = 1,
        --
        farmlabel = "Press ~INPUT_CONTEXT~ to start the process",
        -- Items
        requireditem = nil,
        farmtime = 5000,
        barlabel = "Example Barlabel",
        items = {
            {
                id = 1,
                item = "bread",
                minamount = 1,
                maxamount = 10,
            },
            {
                id = 1,
                item = "water",
                minamount = 1,
                maxamount = 10,
            },
        },
    },]]--
}
