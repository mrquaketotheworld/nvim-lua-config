require('mason-lspconfig').setup {
  ensure_installed = {
    'jdtls',
    'clojure_lsp',
    'cssls',
    'lua_ls',
    'tsserver',
  },
}
