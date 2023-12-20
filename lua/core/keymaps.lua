vim.g.mapleader = " "
local keymap = vim.keymap

-- move code in v mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- cancel highlight by search
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- nvim tree
keymap.set("n", "<leader>o", ":NvimTreeToggle<CR>")

-- bufferline
keymap.set("n", "L", ":bnext<CR>")
keymap.set("n", "H", ":bprevious<CR>")

-- Mappings.
-- See `:help vim.lsp.*` for documentation on any of the below functions
local bufopts = { noremap=true, silent=true }
keymap.set('n', 'gd', vim.lsp.buf.declaration, bufopts)
keymap.set('n', 'gi', vim.lsp.buf.definition, bufopts)
keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
-- ctrl + o for jump back
-- ctrl + i for jump in


