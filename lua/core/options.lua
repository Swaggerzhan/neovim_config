local opt = vim.opt

-- number
opt.number = true
opt.relativenumber = false

-- table
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.modeline = false

opt.wrap = false

opt.cursorline = true
opt.colorcolumn = "85"
opt.scrolloff = 7
--opt.mouse:append("a")
opt.mouse = ""

-- pase

-- theme
vim.cmd[[colorscheme onedark]]
vim.cmd[[let g:WebDevIconsNerdTreeAfterGlyphPadding = '  ']]
vim.cmd[[let g:WebDevIconsUnicodeDecorateFolderNodes = 1]]

-- auto save
--vim.cmd [[autocmd WinLeave * :w]]

-- telescope preview show line number
vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"

local autocmd = vim.api.nvim_create_autocmd

-- clear jump list when create new nvim session
autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        vim.cmd("clearjumps")
    end,
})

autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  group = general,
  desc = "Disable New Line Comment",
})

-- abort some trash diagnostics in lsp
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    signs = {
      severity_limit = "Hint",
    },
    virtual_text = {
      severity_limit = "Warning",
    },
    update_in_insert = true,
  }
)

