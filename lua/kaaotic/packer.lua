-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag='0.1.8',
      requires = {{'nvim-lua/plenary.nvim'}}
  }

  use({
      'folke/tokyonight.nvim',
      as = 'tokyonight',
      config = function()
          vim.cmd('colorscheme tokyonight')
      end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('nvim-lua/plenary.nvim')
  use {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
          require("nvim-autopairs").setup {}
      end
  }
  use{
      'VonHeikemen/lsp-zero.nvim',
      requires = {
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},
          {'neovim/nvim-lspconfig'},
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      }
  }

end)
