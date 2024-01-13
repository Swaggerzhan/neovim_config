local telescope = require('telescope')
local builtin = require('telescope.builtin')

--telescope.setup{
require('telescope').setup {
   defaults = {
	 vimgrep_arguments = {
       'rg',
       '--color=never',
       '--no-heading',
       '--with-filename',
       '--line-number',
       '--column',
       '--smart-case=false',
       '--ignore-case'
     },
     matching_strategy = "strict", 
     initial_mode = "normal", -- open telescope with normal mode
  }
}

-- add plugin for args grep
require('telescope').load_extension('live_grep_args')


vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

--vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})  
vim.keymap.set('n', '<leader>fl', function()
  require('telescope').extensions.live_grep_args.live_grep_args()
end, {})

vim.keymap.set('n', '<leader>fo', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fr', builtin.resume, {}) -- resume before search history

vim.keymap.set('n', '<leader>fj', builtin.jumplist, {}) -- jumplist
vim.keymap.set('n', '<leader>fh', builtin.treesitter, {}) -- history

vim.keymap.set('n', '<leader>fs', builtin.lsp_references, {}) -- list reference
vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols, {}) -- list symbol

--vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {}) -- list opened file
vim.keymap.set('n', '<leader>fb', builtin.current_buffer_fuzzy_find, {}) -- find line in opened file
