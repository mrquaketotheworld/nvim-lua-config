vim.cmd([[
  autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=150}
  autocmd WinEnter term://* startinsert
  augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * set cursorline signcolumn=auto
    au WinLeave * set nocursorline
  augroup END
  autocmd TermOpen * setlocal nonumber norelativenumber
]])
