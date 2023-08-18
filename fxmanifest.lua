fx_version 'cerulean'
games { 'gta5' }
author 'DeXo'

ui_page 'ui/index.html'

files {
    'ui/*.*'
}

client_scripts {
    "client.lua"
}

server_script { 
    '@vrp/lib/utils.lua',
    'server.lua'
}