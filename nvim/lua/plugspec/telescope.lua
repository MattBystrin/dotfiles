local actions = require("telescope.actions")
require('telescope').setup{
	defaults = {
		mappings = {
			i = {
				["<esc>"] = actions.close,
				["<C-h>"] = actions.which_key,
				["<C-w>"] = actions.delete_buffer,
				--["<CR>"] = actions.file_vsplit
			}
		},
		layout_config = { height = 0.95, width = 0.9 },
		-- Defaul settings 
	},
	pickers = {
		man_pages = {
			sections = { "1", "2", "3", "4", "5", "6" },
		}
	},
}
