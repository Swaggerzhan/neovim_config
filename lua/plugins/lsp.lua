require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    -- "sumneko_lua",
    "lua_ls",
    "jdtls",
    "clangd",
    "cmake",
  },
})

-- lsp client for cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
