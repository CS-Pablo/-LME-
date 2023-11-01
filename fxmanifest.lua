fx_version 'cerulean'
game 'gta5'
description 'LME'
lua54 'yes'
version '1.0'

client_script {
    'menu.lua',
    "RageUI.lua"

}



files {
    'config.lua',
    'menu.lua',
    'server/server.lua',
    'imports.lua',
    'locale.js',
    'html/ui.html',
    'html/css/app.css',
    'html/js/mustache.min.js',
    'html/js/wrapper.js',
    'html/js/app.js'
}

ui_page 'html/ui.html'