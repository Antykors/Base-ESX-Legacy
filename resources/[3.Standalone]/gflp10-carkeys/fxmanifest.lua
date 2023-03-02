fx_version 'cerulean'
game 'gta5'

name "gflp10-carkeys"
description "A Carkey script for Ox Inventory"
author "GFLP10#7754"
version "1.0.0"

lua54 'yes'

shared_scripts {
	'@ox_lib/init.lua',
	'@es_extended/imports.lua',
	'shared/config.lua'
}

client_scripts {
	'client/function.lua',
	'client/main.lua'
}
	
server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

dependencies {
	'ox_lib',
	'es_extended'
}
