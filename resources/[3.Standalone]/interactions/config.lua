--FiveM's list of Ped Models can be found here: https://docs.fivem.net/docs/game-references/ped-models/
--A list of all the animations can be found here: https://alexguirre.github.io/animations-list/
Config = {}

Config.npwd = true  --disable npwd phone when player is cuffed or escorted | set to true only if you use NPMD 

Config.mayors = {
	{
		model = "a_f_y_femaleagent", --The model name. See above for the URL of the list.
		coords = vector3(-546.7028, -204.5660, 38.2152), --HAIR ON HAWICK AVE
		heading = 238.1330, --Must be a float value. This means it needs a decimal and a number after the decimal.
		gender = "female", --Use male or female
		animDict = "amb@code_human_cross_road@male@idle_a", --The animation dictionary. Optional. Comment out or delete if not using.
		animName = "idle_c", --The animation name. Optional. Comment out or delete if not using.
		isRendered = false,
		ped = nil,
	},
	{
		model = "a_f_y_femaleagent", --The model name. See above for the URL of the list.
		coords = vector3(1898.0221, 3710.1885, 32.7453), --HAIR ON HAWICK AVE
		heading = 139.0141, --Must be a float value. This means it needs a decimal and a number after the decimal.
		gender = "male", --Use male or female
		animDict = "amb@code_human_cross_road@male@idle_a", --The animation dictionary. Optional. Comment out or delete if not using.
		animName = "idle_c", --The animation name. Optional. Comment out or delete if not using.
		isRendered = false,
		ped = nil,
	},
}
	
