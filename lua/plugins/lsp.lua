require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "clangd",
    "gopls",
	"rust_analyzer",
  },
})

-- lsp client for cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- remove some trash auto complete
capabilities.textDocument.completion.completionItem.snippetSupport = false


require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
require("lspconfig").clangd.setup {
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--header-insertion=never",
    --"--query-driver=/opt/homebrew/opt/llvm/bin/clang",
    "--query-driver=/home/zhanshaowei/github/clangd_16.0.2/bin/clangd",
    "--all-scopes-completion",
    "--inlay-hints=true",
    "--completion-style=detailed",
    "--j=12",
    "--pch-storage=disk",
	"--compile-commands-dir=build",
	"--background-index",
    --"-Wno-unknown-warning-option"
  },
  filetypes = { "c", "cc", "cpp", "objc", "objcpp", "cuda" }
}

-- require("lsp-inlayhints").setup()

require("lspconfig").gopls.setup {
  capabilities = capabilities,
  filetypes = { "go" }
}

-- for rust
require("lspconfig").rust_analyzer.setup {
  capabilities = capabilities,
  filetypes = { "rust" },
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        command = "clippy",
      },
    },
  },
}
