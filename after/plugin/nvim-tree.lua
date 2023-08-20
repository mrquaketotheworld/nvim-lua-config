require('nvim-tree').setup({
  view = {
    preserve_window_proportions = true,
  }
})

vim.keymap.set('n', '<C-n>', ':NvimTreeFindFile!<cr>', { silent = true })
