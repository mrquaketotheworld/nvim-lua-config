vim.opt.termguicolors = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.wildignore = { 'node_modules', 'tags' }
vim.opt.list = true
vim.opt.listchars = { tab = '>~', trail = '·' }
vim.opt.keymap = 'russian-jcukenwin'
vim.opt.imsearch = 0
vim.opt.iminsert = 0
vim.opt.undofile = true
vim.opt.updatetime = 50
vim.opt.numberwidth = 1
vim.opt.swapfile = false
vim.opt.ignorecase = true
vim.opt.infercase = true
vim.opt.smartcase = true
vim.opt.autochdir = true
vim.opt.writebackup = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.cmd.colorscheme 'onedark'
vim.opt.background = 'dark'
vim.opt.grepprg = 'rg --smart-case --vimgrep --follow'
vim.opt.guicursor = ''
vim.opt.winblend = 20
vim.opt.pumblend = 20
vim.opt.guifont = { 'BlexMono Nerd Font Mono', 'h12' }
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.colorcolumn = '100'
vim.opt.equalalways = false
vim.opt.mouse = "a"
vim.cmd([[
  hi MatchParen gui=underline guifg=lightblue
]])
