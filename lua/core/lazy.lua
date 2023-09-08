local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '

require('lazy').setup({
  { 'nvim-telescope/telescope.nvim',   tag = '0.1.1' },
  'nvim-lua/plenary.nvim',
  { 'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate' },
  'mbbill/undotree',
  'tpope/vim-fugitive',
  'lewis6991/gitsigns.nvim',
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v2.x' },
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'nvim-lualine/lualine.nvim',
  { 'phaazon/hop.nvim',          branch = 'v2' },
  'tpope/vim-surround',
  'tpope/vim-commentary',
  'tpope/vim-repeat',
  'mattn/emmet-vim',
  'Olical/conjure',
  'navarasu/onedark.nvim',
  'tpope/vim-sleuth',
  'nvim-tree/nvim-web-devicons',
  'hrsh7th/cmp-buffer',
  'nvim-tree/nvim-tree.lua',
  'norcalli/nvim-colorizer.lua',
  'nelstrom/vim-visual-star-search',
  'folke/tokyonight.nvim',
})
