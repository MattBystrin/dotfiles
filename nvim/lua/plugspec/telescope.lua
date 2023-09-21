local actions = require("telescope.actions")
require('telescope').setup{
	defaults = {
		borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
		mappings = {
			i = {
				["<esc>"] = actions.close,
				["<C-h>"] = actions.which_key
			}
		},
		layout_config = { height = 0.9, width = 0.9 },
		-- Defaul settings 
	},
	pickers = {
		buffers = {
			mappings = {
				i = {
					["<C-w>"] = actions.delete_buffer,
				}
			},
			layout_strategy = "vertical",
			layout_config = {
				preview_cutoff = 1,
				preview_height = 0.5,
				height = 0.95,
				width = 0.7
			}
		},
		man_pages = {
			sections = { "1", "2", "3", "4", "5", "6", "7", "8" },
		}
	},
}
