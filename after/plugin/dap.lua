local dap = require 'dap'
local widgets = require 'dap.ui.widgets'
local widgets_scopes = widgets.sidebar(widgets.scopes)
local widgets_frames = widgets.sidebar(widgets.frames)
vim.keymap.set('n', '<leader>dd', function()
  dap.continue()
  dap.repl.open()
  widgets_scopes.open()
  widgets_frames.open()
end)
vim.keymap.set('n', '<leader>dc', dap.continue)
vim.keymap.set('n', '<leader>dn', dap.step_over)
vim.keymap.set('n', '<leader>di', dap.step_into)
vim.keymap.set('n', '<leader>do', dap.step_out)
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint)
vim.keymap.set('n', '<leader>dl', dap.list_breakpoints)
vim.keymap.set('n', '<leader>dr', dap.repl.open)
vim.keymap.set('n', '<leader>dk', function()
  dap.terminate()
  dap.repl.close()
  dap.clear_breakpoints()
  widgets_scopes.close()
  widgets_frames.close()
end)

vim.fn.sign_define('DapStopped', { text = '▶' })
vim.fn.sign_define('DapBreakpoint', { text = '•' })

vim.keymap.set({ 'n', 'v' }, '<leader>dh', widgets.hover)
require('nvim-dap-virtual-text').setup()
