fx_version 'cerulean'
game 'gta5'

name "interactions"
lua54        'yes'
description "this resource is meant to automate all posssible interrracitons with players "
author "daiguel"
version "1.2.0"

shared_scripts {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua',
	'shared/*.lua'
}

client_scripts {
	'config.lua',
	'client/*.lua'
}

server_scripts {
	'server/*.lua',
	'@oxmysql/lib/MySQL.lua'
}

dependencies {
	'ox_lib',
	'ox_inventory',
	'ox_target',
	'es_extended'
}