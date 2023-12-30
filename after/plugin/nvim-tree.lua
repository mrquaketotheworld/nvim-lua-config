require('nvim-tree').setup({
  view = {
    preserve_window_proportions = true,
    signcolumn = "no",
  },
  filters = {
    git_ignored = false,
    dotfiles = false,
  },
})

vim.keymap.set('n', '<C-n>', ':NvimTreeFindFile!<cr>', { silent = true })
