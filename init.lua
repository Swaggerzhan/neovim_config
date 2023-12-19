-- plugins manager
require("plugins.plugins-setup")

-- some options and mapping
require("core.options")
require("core.keymaps")

-- plugins
require("plugins/nvim-tree")
require("plugins/treesitter")
require("plugins/lsp")

require("plugins/cmp")
require("plugins/bufferline")
require("plugins/gitsigns")

require("plugins/telescope")

require("plugins/toggleterm")

--if vim.g.neovide then
	vim.o.guifont = "Monaco:h13"
--end

