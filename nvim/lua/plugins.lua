--Start packer
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'L3MON4D3/LuaSnip'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'

	use 'neovim/nvim-lspconfig'

	use 'ray-x/lsp_signature.nvim'

	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use 'tpope/vim-fugitive'
	use 'gruvbox-community/gruvbox'

	use {'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use 'mfussenegger/nvim-dap'
	use 'rcarriga/nvim-dap-ui' 
	use {'nvim-lualine/lualine.nvim',
		config = function()
			require'lualine'.setup({
				sections = {
					lualine_x = {
						'encoding',
						{'fileformat',
						symbols = {
							unix = 'NIX',
							dos = 'DOS',
							mac = 'MAC'
						}
						},
						'filetype'
					}
				}
			})
		end
	}

	-- Developed plugins
	use '/home/ronin/Develop/gdb.nvim'
end)

