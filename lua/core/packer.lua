return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
      { 'saadparwaiz1/cmp_luasnip' },
    }
  }
  use 'nvim-lualine/lualine.nvim'
  use { 'phaazon/hop.nvim', branch = 'v2' }
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-repeat'
  use 'mattn/emmet-vim'
  use 'Olical/conjure'
  use 'navarasu/onedark.nvim'
  use 'tpope/vim-sleuth'
  use 'nvim-tree/nvim-web-devicons'
  use 'hrsh7th/cmp-buffer'
  use 'nvim-tree/nvim-tree.lua'
  use 'norcalli/nvim-colorizer.lua'
  use 'nelstrom/vim-visual-star-search'
  use 'folke/tokyonight.nvim'
end)
