local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({
    buffer = bufnr,
    omit = {'gi'}})
end)

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(),
  ['<C-n>'] = cmp.mapping.select_next_item(),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-l>'] = cmp.mapping.confirm {
    select = true,
  },
})

local cmp_completion = lsp.defaults.cmp_config({
  completion = { keyword_length = 1 },
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings,
  completion = cmp_completion,
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'luasnip' },
  })
})

lsp.setup()

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    signs = function(namespace, bufnr)
      return vim.b[bufnr].show_signs == true
    end
  }
)
