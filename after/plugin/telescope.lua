local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<A-f>', builtin.find_files, {})
vim.keymap.set('n', '<A-g>', builtin.git_files, {})
vim.keymap.set('n', '<A-b>', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)

require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ['<esc>'] = actions.close,
      ['<C-k>'] = {
        actions.move_selection_previous, type = 'action',
        opts = { nowait = true, silent = true }
      },
      ['<C-j>'] = {
        actions.move_selection_next, type = 'action',
        opts = { nowait = true, silent = true }
      },
      ['<C-n>'] = false,
      ['<C-p>'] = false,
      },
    },
  },
})
