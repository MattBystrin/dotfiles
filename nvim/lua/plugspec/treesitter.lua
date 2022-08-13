vim.g.symbols_outline = {}
require('nvim-treesitter.configs').setup({
	highlight  = {
		enable = true,
		additional_vim_regex_highlightning = false,
	},
})

require('lsp_signature').setup({
 	bind = true,
 	handler_opts = {
 		border = 'none'
 	},
 	toggle_key = '<C-k>',
	hint_enable = fasle
})
