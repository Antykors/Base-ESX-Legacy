fx_version 'bodacious'
game 'gta5'

description 'DESCRIPTION'
lua54 'yes'
version '1.0'

shared_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'@es_extended/imports.lua',
}

server_scripts{
	'server/main.lua',
	'server/craft.lua',
	'config.lua'
}

client_scripts{
	'client/main.lua',
	'client/craft.lua',
	'config.lua'
}

dependency 'es_extended'
