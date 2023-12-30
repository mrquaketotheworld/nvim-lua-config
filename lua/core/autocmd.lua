vim.cmd([[
  autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=150}
  autocmd WinEnter term://* startinsert
  augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * set cursorline signcolumn=auto
    au WinLeave * set nocursorline
  augroup END
  autocmd TermOpen * setlocal nonumber norelativenumber
  autocmd FileType go setlocal tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
]])

local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ 'VimEnter' }, { callback = open_nvim_tree })
require 'colorizer'.setup({ 'css' }) -- creates autocmd

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { 'conjure*' },
  callback = function(ev)
    vim.diagnostic.disable(ev.buf)
  end
})
