require('basics')
require('colors')
require('telescope-config')
require('coc-config')
require('lualine').setup()
require('autopairs')
require('whichkey')
require('nvim-autopairs').setup{}
require('gitsigns').setup()
require('gitsigns-setup')

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
}

local db = require('dashboard')
  db.custom_center = {
      {icon = '  ',
      desc = 'Recently latest session                  ',
      shortcut = 'SPC s l',
      action ='SessionLoad'},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f'},
      {icon = '  ',
      desc ='File Browser                            ',
      action =  'Telescope file_browser',
      shortcut = 'SPC f b'},
      {icon = '  ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = 'SPC f w'},
    }

return require('packer').startup(function()
  use 'tpope/vim-dispatch'
  use 'junegunn/fzf'
  use 'habamax/vim-godot'
  use 'wbthomason/packer.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'folke/tokyonight.nvim'
  use 'nvim-treesitter/nvim-treesitter' 
  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'ThePrimeagen/git-worktree.nvim'
  use 'glepnir/dashboard-nvim'
  use 'windwp/nvim-autopairs'
  use 'folke/which-key.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'pangloss/vim-javascript'
  use 'mxw/vim-jsx'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
end)
