--Start packer
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'neovim/nvim-lspconfig'

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'

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
	use 'nvim-lualine/lualine.nvim'

	-- Developed plugins
	use '/home/ronin/Develop/gdb.nvim'
end)

