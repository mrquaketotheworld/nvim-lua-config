require('nvim-tree').setup()
vim.keymap.set('n', '<C-n>', ':NvimTreeFindFile!<cr>', {silent = true})
