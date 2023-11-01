fx_version 'cerulean'
game 'gta5'
description 'LME'
lua54 'yes'
version '1.0'

shared_scripts({
	"@es_extended/imports.lua",
	"config.lua",
})

client_script {
    'menu.lua',
    "src/RageUI.lua",
    "client/Keys.lua",
	"src/Menu.lua",
	"src/MenuController.lua",
	"src/components/*.lua",
	"src/elements/*.lua",
	"src/items/*.lua",


}



files {
    'server/server.lua',

}

dependencies {
    
	"es_extended",
	"oxmysql",
	"esx_status",
	"esx_datastore",
}
