# Base_Script
A Job base for FiveM 

# Personalisation
Before begining anything, you should modify the config.lua file and client/main.lua to you liking

## config.lua

### at line 11
```lua
Config.Job = "jobhere"
```
define the name of the job, it should be noted that it should be the same as your database name

### lines 13 and 14
```lua
Config.Crafting = true
Config.CraftingPos = vector3(0.0, 0.0, 0.0)
```
defines the the craft is enabled for this job and where the crating bench is located

### lines 17 to 26
```lua
Config.Zones = {
    {
        Pos   = vector3(0.0,0.0,0.0),
        Name  = "boss",
    },
    {
        Pos   = vector3(0.0,0.0,0.0),
        Name  = "cloakroom",
    }
}
```
defines your job points location please mind the commentary on those lines, you should define the vector3 function to define where those 2 basic points are located

### lines 29 to 60
This will define the stashes (created by ox_inventory) !! mind the commentary !!

### lines 63 to 73
This will define what items are craftable, you can leave this part if you chose to diable the craft else read carefully the commentary on those parts

### lines 76 to 93
This will define the work clothes for the employees

## client/main.lua

### at line 116
You will be able to add zone specific actions by adding
```lua
elseif currentZone == "nameofzone" then
```
the name of the zone is defined in the config.lua inside of Config.Zones at line 17

# Dependencies
This script needs :

#### [ESX Legacy](https://github.com/esx-framework/esx-legacy/tree/main/%5Besx%5D/es_extended)
#### [esx_skin](https://github.com/esx-framework/esx-legacy/tree/main/%5Besx%5D/esx_skin)
#### [esx_skinchanger](https://github.com/esx-framework/esx-legacy/tree/main/%5Besx%5D/skinchanger)
#### [ox_inventory](https://github.com/overextended/ox_inventory)
#### [esx_society](https://github.com/esx-framework/esx-legacy/tree/main/%5Besx_addons%5D/esx_society)
#### [okokNotify (optional)](https://okok.tebex.io/package/4724993)

## okokNotify
If you do not use okokNotify that's okay just replace every calls of
```lua
exports['okokNotify']:Alert
```
by your favorite notification system

# LICENCES
see [LICENSE](LICENSE)
