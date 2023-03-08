fx_version'cerulean'
game'gta5'

author'At0m_.'
description'Pause Menu'
version'1.0.0'

lua54        'yes'
license      'GPL-3.0-or-later'

server_scripts ({
    'server.lua'
})

shared_script {
    '@es_extended/imports.lua',
	'config.lua'
}

client_script {
    'client.lua',
}

files({
    "ui/dist/**",
})

ui_page("ui/dist/index.html")
-- ui_page('http://localhost:5173/index.html')