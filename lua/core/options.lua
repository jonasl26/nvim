local opt = vim.opt
local g = vim.g

local options = require("core.utils").load_config().options

opt.title = true
opt.clipboard = options.clipboard
opt.cmdheight = options.cmdheight

opt.expandtab = options.expandtab
opt.shiftwidth = options.shiftwidth
opt.smartindent = options.smartindent

opt.fillchars = options.fillchars

opt.hidden = options.hidden
opt.ignorecase = options.ignorecase
opt.smartcase = options.smartcase
opt.mouse = options.mouse

opt.number = options.number
opt.numberwidth = options.numberwidth
opt.relativenumber = opt.relativenumber
opt.ruler = options.ruler

opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.tabstop = options.tabstop
opt.termguicolors = true
opt.timeoutlen = options.timeoutlen
opt.undofile = options.undofile

opt.updatetime = options.updatetime

opt.whichwrap:append "<>[]hl"

g.mapleader = options.mapleader

local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end

--Defer loading shada until after startup_
vim.opt.shadafile = "NONE"
vim.schedule(function()
  vim.opt.shadafile = require("core.utils").load_config().options.shadafile
  vim.cmd [[ silent! rsh ]]
end)



