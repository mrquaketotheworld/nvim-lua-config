return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use 'nvim-treesitter/playground'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  }
  use 'nvim-lualine/lualine.nvim'
  use {
    'phaazon/hop.nvim',
    branch = 'v2' -- optional but strongly recommended
  }
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-repeat'
  -- use 'windwp/nvim-autopairs'
  use 'mattn/emmet-vim'
  use 'Olical/conjure'
  use 'Th3Whit3Wolf/space-nvim'
  use 'navarasu/onedark.nvim'
  use 'tpope/vim-sleuth'
  use 'eandrju/cellular-automaton.nvim'
  use 'folke/zen-mode.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'tanvirtin/monokai.nvim'
  use 'hrsh7th/cmp-buffer'
  use 'nvim-tree/nvim-tree.lua'
  use 'norcalli/nvim-colorizer.lua'
end)
