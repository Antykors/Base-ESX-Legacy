
## before we begin special thanks to <a href="https://github.com/overextended">overextended team<a/> this would'nt be possible without them

# INTERACTIONS
this is my first ressource, hope you guys will enjoy it :)


## PREVIEW
   - <a href="https://youtu.be/tcXdmWcab0g">preview1</a>
   - <a href="https://youtu.be/YatqbZV5tSE">preview2</a>

## RASMON
![alt text](https://i.ibb.co/FmZZXz0/Screenshot-2022-10-13-204416.png "perfs") 

## INSTALLATION
Drag and drop. 
You also need to have :
 - <a href="https://github.com/ESX-Org/es_extended">es_extended</a>
 - <a href="https://github.com/ESX-Org/esx_license">esx_license</a> 
 - <a href="https://github.com/overextended/ox_inventory">ox_inventory</a>
 - <a href="https://github.com/overextended/ox_lib">ox_lib</a>
 - <a href="https://github.com/overextended/ox_target">ox_target</a>
 - <a href="https://github.com/daiguel/jsfour-idcard">jsfour-idcard</a> this is adapted version of <a href="https://github.com/jonassvensson4/jsfour-idcard">**original jsfour-idcard**</a>, to work with ox_inventory



# ITEMS
to work correctly you need to add this items to ox_inventory 

```lua
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
```