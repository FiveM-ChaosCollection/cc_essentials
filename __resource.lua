-- Description
description 'ChaosCollection: Essentials (by 2called-chaos)'

-- Require dependencies
dependency 'mysql-async'
dependency 'chacol_core'

-- NUI page
-- ui_page 'nui/interface.html'

-- Server scripts
server_scripts {
  '@mysql-async/lib/MySQL.lua', -- MySQL library
  '@chacol_core/lib/string_utils.lua',
  'lib/pprint.lua'
  'lib/server/main.lua'
}

-- Client scripts
client_scripts {
  'lib/client/main.lua'
}

