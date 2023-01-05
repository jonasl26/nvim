local G = {}

G.options = {
	clipboard = "unnamedplus",
	cmdheight = 1,
	ruler = false,
	hidden = true,
	ignorecase = true,
	smartcase = true,
	mapleader = " ",
	mouse = "a",
	number = true,
	numberwidth = 2,
	relativenumber = false,
	expandtab = true,
	shiftwidth = 2,
	smartident = true,
	tabstop = 8,
	timeoutlen = 400,
	updatetime = 250,
	undofile = true,
	fillchars = { eob = " " },
	shadafile = vim.opt.shadafile
 }

 G.ui = {theme = "onedark"}
 G.plugins = {
    options = {
      packer = {
         init_file = "plugins.packerInit",
      }
    },
    default_plugin_config_replace = {},
 }
 
 return G
