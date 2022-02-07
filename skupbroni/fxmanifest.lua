fx_version 'adamant'
game 'gta5'

shared_script '@DiamondCasino/shared.lua'

version '1.0.0 by Wiertarkov'

client_scripts {
	'@es_extended/locale.lua',
	'client.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'server.lua',
	'@mysql-async/lib/MySQL.lua'
}
