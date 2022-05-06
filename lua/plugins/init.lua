local plugin_settings =  require("core.utils").load_config().plugins
local present, packer = pcall(require, plugin_settings.options.packer.init_file)

if not present then
  return false
end

local override_req = require("core.utils").override_req

local plugins = {
  {"vim-airline/vim-airline",
    config = function() require("plugins.configs.airline") end,
  },
  {"vim-airline/vim-airline-themes"},
  {"wbthomason/packer.nvim"},
  {"nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim"} }
  },
  {"neovim/nvim-lspconfig"},
  {"hrsh7th/nvim-cmp"},
  {"hrsh7th/cmp-nvim-lsp"},
  {"OmniSharp/omnisharp-vim",
    config = function() require("plugins.configs.omnisharp") end,
  },
  {"dense-analysis/ale",
    config = function() require("plugins.configs.ale") end,
  },
  {"junegunn/fzf"},
  {"junegunn/fzf.vim"},
  {"preservim/nerdtree"},
--  {"prabirshrestha/asyncomplete.vim",
  --  config = function() require("plugins.configs.asyncomplete") end,
  --},
  --{"itchyny/lightline.vim"},
  --{"shinchu/lightline-gruvbox.vim"},
  --{"maximbaz/lightline-ale"},
}

return packer.startup(function(use)
   for _, v in pairs(plugins) do
      use(v)
   end
end)
