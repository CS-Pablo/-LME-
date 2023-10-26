---@diagnostic disable: undefined-global
fx_version ''
game ''
description 'LME'
lua54 'yes'
version '1'

shared_scripts {
	'locale.lua',
	'locales/*.lua',

	'config.lua',
	'config.weapons.lua',
}


server_scripts {


}

client_scripts {
	'menu/client.lua',


}

ui_page {
	'html/ui.html'
}

files {
	'imports.lua',
	'locale.js',
	'html/ui.html',

	'html/css/app.css',

	'html/js/mustache.min.js',
	'html/js/wrapper.js',
	'html/js/app.js',


}

dependencies {
	'/native:0x6AE51D4B',
	'oxmysql',
	'spawnmanager',
}
