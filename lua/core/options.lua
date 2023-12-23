local opt = vim.opt

-- number
opt.number = true
opt.relativenumber = false

-- table
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = true
opt.colorcolumn = "85"
opt.scrolloff = 7
opt.mouse:append("a")
--opt.mouse = ""

-- pase

-- theme
vim.cmd[[colorscheme onedark]]

vim.cmd[[let g:WebDevIconsNerdTreeAfterGlyphPadding = '  ']]
vim.cmd[[let g:WebDevIconsUnicodeDecorateFolderNodes = 1]]

-- telescope preview show line number
vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"

vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        vim.cmd("clearjumps")
    end,
})

