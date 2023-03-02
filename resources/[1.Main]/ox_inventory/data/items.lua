return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 1,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		},
		consume = 0.3
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 1,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['phone'] = { -- If you aren't using NPWD, remove the client section of this item
        label = 'Phone',
        weight = 190,
        stack = false,
        consume = 0,
        client = {
            add = function(total)
                if total > 0 then
                    pcall(function() return exports.npwd:setPhoneDisabled(false) end)
                end
            end,

            remove = function(total)
                if total < 1 then
                    pcall(function() return exports.npwd:setPhoneDisabled(true) end)
                end
            end
        }
    },

	['mustard'] = {
		label = 'Mustard',
		weight = 1,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 1,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 1,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 1,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 1,
	},

	['blowpipe'] = {
		label = 'Chalumeaux',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['carokit'] = {
		label = 'Kit carosserie',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['carotool'] = {
		label = 'outils carosserie',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['fixkit'] = {
		label = 'Kit réparation',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['fixtool'] = {
		label = 'outils réparation',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['gazbottle'] = {
		label = 'bouteille de gaz',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['medikit'] = {
		label = 'Medikit',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['sandwich'] = { -- A simple sandwich for a simple day
        label = 'Sandwich',
        weight = 350,
        stack = true,
        close = true,
        description = "A simple sandwich for a simple day",
        client = {
            status = { hunger = 60000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_sandwich_01', pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
            usetime = 7500,
        },
    },

    ['burger'] = { -- A test hamburger that you can eat
        label = 'Hamburger',
        weight = 350,
        stack = true,
        close = true,
        description = "A test hamburger that you can eat",
        client = {
            status = { hunger = 60000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_cs_burger_01', pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
            usetime = 7500,
        },
    },

	['ecola'] = { -- Carbonized syrup is good for the soul
        label = 'eCola',
        weight = 350,
        stack = true,
        close = true,
        description = "Carbonized syrup is good for the soul",
        client = {
            status = { thirst = 20000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ecola_can', pos = vec3(0.025, 0.010, 0.05), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 7500,
        },
    },

    ['ejunk'] = { -- Drinking too much of this wont kill you. I think.
        label = 'Junk Energy',
        weight = 350,
        stack = true,
        close = true,
        description = "Drinking too much of this wont kill you. I think.",
        client = {
            status = { thirst = 20000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'sf_prop_sf_can_01a', pos = vec3(0.025, 0.010, 0.05), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 7500,
        },
    },

	['rancho_beer'] = { -- Good ol imported beer from mexico
        label = 'Cerbesa Barracho',
        weight = 580,
        stack = true,
        close = true,
        description = "Good ol imported beer from mexico",
        client = {
            status = { drunk = 60000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_beer_bottle', pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
            usetime = 7500,
        },
    },

    ['dusche_beer'] = { -- Good ol imported beer from germany
        label = 'Dusche Beer',
        weight = 580,
        stack = true,
        close = true,
        description = "Good ol imported beer from germany",
        client = {
            status = { drunk = 60000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_beerdusche', pos = vec3(0.01, -0.01, -0.12), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 7500,
        },
    },

    ['stronzo_beer'] = { -- Good ol imported beer from italy
        label = 'Stronzo Beer',
        weight = 580,
        stack = true,
        close = true,
        description = "Good ol imported beer from italy",
        client = {
            status = { drunk = 60000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_beer_stz', pos = vec3(0.01, -0.02, -0.15), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 7500,
        },
    },

    ['patriot_beer'] = { -- Good ol homemade beer from the brewery
        label = 'Patriot Beer',
        weight = 580,
        stack = true,
        close = true,
        description = "Good ol homemade beer from the brewery",
        client = {
            status = { drunk = 60000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_beer_patriot', pos = vec3(0.01, -0.02, -0.15), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 7500,
        },
    },

	['wallet'] = { -- Use to hold licenses
        label = 'Wallet',
        weight = 115,
        description = "If you lose this, you're gonna be sorry",
        client = {
            anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
            prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
            disable = { move = true, car = true, combat = true },
            usetime = 2500,
        }
    },

    ['bandage'] = { -- Use to partially heal self
        label = 'Bandage',
        weight = 115,
        description = "Yes, this definetly will heal that gunshot wound",
        client = {
            anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
            prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
            disable = { move = true, car = true, combat = true },
            usetime = 2500,
        }
    },

    ['cigarette'] = { -- social item that causes slight damage to health
        label = 'Cigarettes',
        weight = 115,
        description = "These probably aren't good for you, but fuck it",
        client = {
            anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c', flag = 49 },
            prop = { model = 'prop_cs_ciggy_01', 
            pos = vec3(0.0, 0.0, 0.0), 
            rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = { move = false, car = false, combat = false },
            usetime = 8000,
        }
    },

	['vape'] = { -- social item that causes slight damage to health
        label = 'Vape',
        weight = 115,
        description = "Vape-nash bruh, tastes like dissapointment",
        consume = 0,
        degrade = 60,
        client = {
            anim = { dict = 'amb@world_human_smoking@male@male_b@base', clip = 'base', flag = 49 },
            prop = { model = 'xm3_prop_xm3_vape_01a', 
            pos = vec3(-0.02, -0.02, 0.02), 
            rot = vec3(70.0, 110.0, 10.0), bone = 28422 },

            disable = { move = false, car = false, combat = false },
            usetime = 7000,
        }
    },

    ['bodyarmor_1'] = { --  Use to set body armor to 30%
        label = 'Light Ballistic Vest',
        weight = 3000,
        stack = false,
        description = "Bullts hurt a bit less with this",
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 6500
        }
    },

    ['bodyarmor_2'] = { --  Use to set body armor to 60%
        label = 'Medium Ballistic Vest',
        weight = 4500,
        stack = false,
        description = "Bullets hurt a lot less with this",
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 6500
        }
    },

    ['bodyarmor_3'] = { --  Use to set body armor to 100%
        label = 'Heavy Ballistic Vest',
        weight = 4500,
        stack = false,
        description = "Keep the extra bullets for personal vest flair",
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 6500
        }
    },

    ['parachute'] = { -- Use to equip parachute tool
        label = 'Parachute',
        weight = 8000,
        stack = false,
        description = "For your sake, I hope it opens at the last second",
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500
        }
    },

    ['lockpick'] = { -- Use for doors and cars
        label = 'Lockpicks',
        weight = 115,
        description = "Modern problems require sneaky solutions",
    },

    ['money'] = { -- Player currency
        label = 'Money',
        weight = 0,
        description = "The root of all evil and payer of rent",
    },

    ['black_money'] = { -- Player currency
        label = 'Dirty Money',
        weight = 0,
        description = "If you don't wash this, you're gonna be stinky",
    },

	['badge_fib'] = { -- idea: Player uses item to show badge prop
        label = 'FIB Badge',
        weight = 444,
        consume = 0,
        description = "For official use by FIB Agents only",
        client = {
            anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 },
            prop = { model = 'prop_fibb_badge', -- need badge props repo
            pos = vec3(0.13, 0.023, -0.04), 
            rot = vec3(-90.0, -180.0, 300.0), bone = 28422 },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    },

    ['badge_bcso'] = { -- idea: Player uses item to show badge prop
        label = 'BCSO Badge',
        weight = 444,
        consume = 0,
        description = "For official use by FIB Agents only",
        client = {
            anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 },
            prop = { model = 'prop_bcso_badge', -- need badge props repo
            pos = vec3(0.13, 0.023, -0.04), 
            rot = vec3(-90.0, -180.0, 300.0), bone = 28422 },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    },

    ['badge_lssd'] = { -- idea: Player uses item to show badge prop
        label = 'LSSD Badge',
        weight = 444,
        consume = 0,
        description = "For official use by FIB Agents only",
        client = {
            anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 },
            prop = { model = 'prop_lssd_badge', -- need badge props repo
            pos = vec3(0.13, 0.023, -0.04), 
            rot = vec3(-90.0, -180.0, 300.0), bone = 28422 },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    },

    ['badge_lspd'] = { -- idea: Player uses item to show badge prop
        label = 'LSPD Badge',
        weight = 444,
        consume = 0,
        description = "For official use by FIB Agents only",
        client = {
            anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 },
            prop = { model = 'prop_lspd_badge', -- need badge props repo
            pos = vec3(0.13, 0.023, -0.04), 
            rot = vec3(-90.0, -180.0, 300.0), bone = 28422 },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    },

    ['backpack'] = {
		label = 'Backpack',
		weight = 220,
		stack = false,
		consume = 0,
		client = {
			export = 'wasabi_backpack.openBackpack'
		}
	},

	-- Vigneron

	['epinette'] = {
		label = 'Epinette',
		weight = 1,
		stack = false,
		close = true,
		description = "Sécateur destiné à récolter le raisin"
	},

	['raisinrouge'] = {
		label = 'Raisin rouge',
		weight = 1,
		stack = true,
		close = true,
		description = "Grappe de raisin rouge"
	},

	['raisinblanc'] = {
		label = 'Raisin blanc',
		weight = 1,
		stack = true,
		close = true,
		description = "Grappe de raisin blanc"
	},

	['jusraisinrouge'] = {
		label = 'Jus de raisin rouge',
		weight = 1,
		client = {
			status = { thirst = 350000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Vous avez bu un jus de raisins rouges'
		},
		stack = true,
		close = true,
		description = "Bouteille de jus de raisins rouges"
	},

	['jusraisinblanc'] = {
		label = 'Jus de raisin blanc',
		weight = 1,
		client = {
			status = { thirst = 350000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Vous avez bu un jus de raisins blancs'
		},
		stack = true,
		close = true,
		description = "Bouteille de jus de raisins blancs"
	},

	['vinrouge'] = {
		label = 'Vin rouge',
		weight = 1,
		client = {
			status = { drunk = 75000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Vous avez bu du vin rouge'
		},
		stack = true,
		close = true,
		description = "Bouteille de vin rouge"
	},

	['vinblanc'] = {
		label = 'Vin blanc',
		weight = 1,
		client = {
			status = { drunk = 75000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Vous avez bu du vin blanc'
		},
		stack = true,
		close = true,
		description = "Bouteille de vin blanc"
	},

	['bottle'] = {
		label = 'Bouteille vide',
		weight = 1,
		stack = true,
		close = true,
		description = "Bouteille vide"
	},

    ['handcuffs'] = {
		label = 'handcuffs',
		weight = 500,
		stack = false,
		consume = 0,
			client = {
			anim = { dict = 'mp_prison_break', clip = 'handcuffed' },
				usetime = 3500,
			}
	},

	['ziptie'] = {
		label = 'ziptie',
		weight = 500,
		stack = true,
		client = {
			anim = { dict = 'mp_prison_break', clip = 'handcuffed' },
			usetime = 6500
		}
	},
	
	['idcard'] = {
		label = 'id card',
		weight = 0,
		stack = false,
		close = true,
		consume = 0,
		client = {
			export = 'interactions.idcard'
		},
		buttons = {
			{
				label = 'VIEW ID CARD',
				action = function (slot)
					local idcards = exports.ox_inventory:Search('slots', 'idcard')
					for _, v in pairs(idcards) do
						if v.slot == slot  then 
							TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), nil, v.metadata)
						end
					end
				end
			}
		}

	},

	['drivers_license'] = {
		label = 'driver license',
		weight = 0,
		stack = false,
		close = true,
		consume = 0,
		client = {
			export = 'interactions.drivers_license'
		},
		buttons = {
			{
				label = 'VIEW DRIVER LICENSE',
				action = function (slot)
					local idcards = exports.ox_inventory:Search('slots', 'drivers_license')
					for _, v in pairs(idcards) do
						if v.slot == slot  then 
							TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), "driver", v.metadata)
						end
					end
				end
			}
		}

	},

	['farmlicense'] = {
		label = 'weapon license',
		weight = 0,
		stack = false,
		close = true,
		consume = 0,
		client = {
			export = 'interactions.farmlicense'
		},
		buttons = {
			{
				label = 'VIEW WEAPON LICENSE',
				action = function (slot)
					local idcards = exports.ox_inventory:Search('slots', 'farmlicense')
					for _, v in pairs(idcards) do
						if v.slot == slot  then 
							TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), "weapon", v.metadata)
						end
					end
				end
			}
		}

	},

    ['carkey'] = {
		label = 'Carkey',
		weight = 300,
		stack = false
},
}