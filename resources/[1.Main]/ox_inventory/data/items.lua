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

	['bandage'] = {
		label = 'Bandage',
		weight = 1,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 1,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 1,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 1,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
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

	['lockpick'] = {
		label = 'Lockpick',
		weight = 1,
	},

	['phone'] = {
		label = 'Phone',
		weight = 1,
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

	['money'] = {
		label = 'Money',
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
}