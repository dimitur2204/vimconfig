-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
}

use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
}

use { "catppuccin/nvim", as = "catppuccin" }

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use('tpope/vim-rhubarb')
use('sbdchd/neoformat')

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})

use("github/copilot.vim")
use('nvim-tree/nvim-tree.lua')

use {
    "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
        require("ts_context_commentstring").setup({
            enable_autocmd = false,
        })
    end
}

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup({
               pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
        })
    end
}


end)
