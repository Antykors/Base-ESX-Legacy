fx_version 'adamant'

game 'gta5'

description 'easy to use sim manager for npwd phone'
author 'lilfraae'
version '1.0'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
	'server/main.lua',
}

client_scripts {
	'client/main.lua',
}

shared_scripts {
    '@es_extended/locale.lua',
	'@es_extended/imports.lua',
    'locales/*.lua',
    'config.lua'
}

dependency 'es_extended'