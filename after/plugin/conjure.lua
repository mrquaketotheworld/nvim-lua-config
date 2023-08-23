vim.cmd([[
  autocmd FileType clojure map <buffer><silent> <Bslash> :ConjureEvalRootForm<cr>
]])

vim.g['conjure#mapping#doc_word'] = false
