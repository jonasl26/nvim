local plugin_settings =  require("core.utils").load_config().plugins
local present, packer = pcall(require, plugin_settings.options.packer.init_file)

if not present then
  return false
end

local override_req = require("core.utils").override_req

local plugins = {
--  {"vim-airline/vim-airline",
  --  config = function() require("plugins.configs.airline") end,
  --},
  {"nvim-lualine/lualine.nvim",
--    requires = {"kyazdani42/nvim-web-devicons", opt = true },
    config = function() require("plugins.configs.lualine") end,
  },
  {"wbthomason/packer.nvim"},
  {"neovim/nvim-lspconfig"},
  {"hrsh7th/nvim-cmp"},
  {"hrsh7th/cmp-nvim-lsp"},
  --Configuracion C#
  {"OmniSharp/omnisharp-vim",
    config = function() require("plugins.configs.omnisharp") end,
  },
  --Analizador de syntax
  {"dense-analysis/ale",
    config = function() require("plugins.configs.ale") end,
  },
  --Autocompletado
  {"prabirshrestha/asyncomplete.vim",
    config = function() require("plugins.configs.asyncomplete") end,
  },
  --Debuggin
  --{"puremourning/vimspector",
   -- config = function() require("plugins.configs.vimspector") end,
 -- },
  --Resaltado de syntax
  {"nvim-treesitter/nvim-treesitter"},
  {"junegunn/fzf"},
  {"junegunn/fzf.vim"},
  --Manejador de Carpetas
  {"preservim/nerdtree"},
  {"kyazdani42/nvim-tree.lua",
    requires = {"kyazdani42/nvim-web-devicons"},
    config = function() require("plugins.configs.nvimtree") end,
--    tag = "nightly"
  },
  --Buscador de Archivos
  {"nvim-telescope/telescope.nvim",
    requires = {"nvim-lua/plenary.nvim"}
  },
  --Comparador de archivos
  {"sindrets/diffview.nvim",
    requires = "nvim-lua/plenary.nvim"
  },
  --Agregacion de comentarios
  {"preservim/nerdcommenter"},
  --Barra de estado
  --{"vim-airline/vim-airline-themes"},
   --Temas
  {"sonph/onehalf"},
  {"morhetz/gruvbox"},
  {"joshdick/onedark.vim"},
  {"altercation/vim-colors-solarized"},
  --Iconos
--  {"ryanoasis/vim-devicons"},
  --Barra
  {"romgrk/barbar.nvim",
    requires = {"kyazdani42/nvim-web-devicons"}
  },
  --git
  {"tpope/vim-fugitive"},
  {"tpope/vim-repeat"}
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
