require('nvim-tree').setup {
  actions = {
    open_file = {
      resize_window = false
    }
  }
}

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<C-q>', ':NvimTreeFindFile!<cr>')
