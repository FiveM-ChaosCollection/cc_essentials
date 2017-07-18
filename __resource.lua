-- Description
description 'ChaosCollection: Essentials (by 2called-chaos)'

-- Require dependencies
dependency 'mysql-async'
dependency '[chaos_collection]/core'

-- NUI page
-- ui_page 'nui/interface.html'

-- Server scripts
server_scripts {
  '@mysql-async/lib/MySQL.lua', -- MySQL library
  '@[chaos_collection]/core/lib/utils.lua', -- MySQL library
  'lib/server/main.lua'
}

-- Client scripts
client_scripts {
  'lib/client/main.lua'
}

