lua << EOF
local actions = require("telescope.actions")
require('telescope').setup{
	defaults = {
		mappings = {
			i = {
				["<esc>"] = actions.close
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
EOF
