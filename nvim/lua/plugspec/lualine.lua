require'lualine'.setup({
	sections = {
		lualine_b = {
			{
				'diagnostics',
				symbols = {
					error = 'E',
					warn = 'W',
					info = 'I',
					hint = 'H'
				}
			}
		},
		lualine_c = { 'filename', 'branch' },
		lualine_x = {
			'encoding',
			{
				'fileformat',
				symbols = {
					unix = 'NIX',
					dos = 'DOS',
					mac = 'MAC'
				}
			},
			'filetype'
		}
	},
	tabline = {
		lualine_a = {},
		lualine_b = {'buffers'},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {'tabs'}
	}
})
