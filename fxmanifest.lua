fx_version 'cerulean'

game 'gta5'

author 'Flowd#9275'
description 'Job Menu Script'

lua54 'yes'

ui_page 'web/ui.html'

files {
    'web/*'
  }

shared_scripts {
    '@es_extended/imports.lua',
	'@es_extended/locale.lua',
    'config.lua',
    'locales/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua',
}

escrow_ignore {
	'locales/*.lua',
    'cl_utils.lua',
    'config.lua'
}

client_scripts {
    'client.lua',
    'cl_utils.lua'
}
dependency '/assetpacks'