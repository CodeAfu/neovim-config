local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.stdpath('data') .. '/site/java/workspace-root/' .. project_name

local config = {
  cmd = {
    vim.fn.stdpath("data") .. "/mason/bin/jdtls",
    '-data', workspace_dir
  },
  root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew' }),
  settings = {
    java = {}
  }
}

require('jdtls').start_or_attach(config)
