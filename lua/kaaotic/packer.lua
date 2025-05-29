-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --use "github/copilot.vim"

  use {
      'nvim-telescope/telescope.nvim', tag='0.1.8',
      requires = {{'nvim-lua/plenary.nvim'}}
  }

  use({
      'olivercederborg/poimandres.nvim',
      as = 'poimandres',
      config = function()
          vim.cmd('colorscheme poimandres')
      end
  })

  use({
      'shaunsingh/moonlight.nvim',
      as = 'moonlight',
      config = function()
          vim.cmd('colorscheme moonlight')
      end
  })

  use({
      'folke/tokyonight.nvim',
      as = 'tokyonight',
      config = function()
          vim.cmd('colorscheme tokyonight')
      end
  })

  use({
      'sainnhe/gruvbox-material',
      as = 'gruvbox-material',
      config = function()
          vim.cmd('colorscheme gruvbox-material')
      end
  })

  use({
      'maxmx03/fluoromachine.nvim',
      as = 'fluoromachine',
      config = function()
          vim.cmd('colorscheme fluoromachine')
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

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }

  use{
      'mason-org/mason-lspconfig.nvim',
      requires = {
          {'mason-org/mason.nvim'},
          {'neovim/nvim-lspconfig'},
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      }
  }

end)
