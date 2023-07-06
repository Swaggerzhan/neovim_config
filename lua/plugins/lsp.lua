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
require("lspconfig").clangd.setup {
  cmd = {
    "clangd",
    "--header-insertion=never",
    --"--query-driver=/opt/homebrew/opt/llvm/bin/clang",
    "--all-scopes-completion",
    "--inlay-hints=true",
    "--completion-style=detailed",
    "--j=12",
    "--pch-storage=disk",
  },
  filetypes = { "c", "cc", "cpp", "objc", "objcpp", "cuda", "proto" }
}

require("lsp-inlayhints").setup()
