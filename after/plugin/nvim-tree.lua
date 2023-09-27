require('nvim-tree').setup({
  view = {
    preserve_window_proportions = true,
  },
  filters = {
    git_ignored = true,
    dotfiles = true,
  },
})

vim.keymap.set('n', '<C-n>', ':NvimTreeFindFile!<cr>', { silent = true })
