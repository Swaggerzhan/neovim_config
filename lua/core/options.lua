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
-- opt.mouse:append("a")
opt.mouse = ""

-- pase

-- theme
vim.cmd[[colorscheme onedark]]

vim.cmd[[let g:WebDevIconsNerdTreeAfterGlyphPadding = '  ']]
vim.cmd[[let g:WebDevIconsUnicodeDecorateFolderNodes = 1]]
