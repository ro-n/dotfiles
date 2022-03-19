require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
    require('rose-pine').setup({
      dark_variant = 'moon',
      disable_background = true
    })
    vim.cmd('colorscheme rose-pine')
    end
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = function() require'nvim-tree'.setup {
      auto_close = true,
      view = {
        width = 45,
        height = 30,
        side = "right"
      }
    }
    end
  }
  use 'windwp/nvim-autopairs'
end)
