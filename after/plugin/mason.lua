require('mason-lspconfig').setup {
  ensure_installed = {
    'clojure_lsp',
    'cssls',
    'lua_ls',
    'tsserver',
  },
}
