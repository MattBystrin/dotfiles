--Start packer
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'L3MON4D3/LuaSnip'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'

	use 'neovim/nvim-lspconfig'

	use 'ray-x/lsp_signature.nvim'

	use { 'nvim-lua/plenary.nvim', tag = 'v0.1.1' }
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.1' }

	use { 'nvim-treesitter/nvim-treesitter', tag = 'v0.7.2', run = ':TSUpdate' }

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	--use 'tpope/vim-fugitive'
	
	use { 'lewis6991/gitsigns.nvim', tag = 'v0.6' }

	use 'gruvbox-community/gruvbox'
	use 'nvim-lualine/lualine.nvim'

	-- Developed plugins
	use {
		'MattBystrin/gdb.nvim',
		branch = 'dev'
	}
end)

