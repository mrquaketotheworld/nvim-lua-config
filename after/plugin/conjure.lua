vim.cmd([[
  autocmd FileType clojure map <buffer><silent> <Bslash> :ConjureEvalRootForm<cr>
]])

vim.g['conjure#mapping#doc_word'] = false
vim.g['conjure#filetypes'] = {'clojure'}
vim.g['conjure#log#hud#enabled'] = false
vim.g['conjure#log#wrap'] = true

