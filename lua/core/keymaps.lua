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
