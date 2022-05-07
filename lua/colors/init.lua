local cmd = vim.cmd
local ui = require("core.utils").load_config().ui

cmd('colorscheme '..ui.theme)
