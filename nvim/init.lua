require('plugins')
require('options')
require('keymaps')

if not vim.opt.diff:get() then
	require('plugspec/lsp')
	require('plugspec/cmp')
	require('plugspec/gdb')
	require('plugspec/telescope')
	require('plugspec/luasnip')
end

require('plugspec/gitsigns')
require('plugspec/treesitter')
require('plugspec/lualine')
require('plugspec/misc')

vim.cmd "colorscheme gruvbox"
-- Diff colors override
vim.cmd "highlight DiffAdd cterm=NONE gui=NONE ctermbg=237 guibg=#3c3836"
vim.cmd "highlight DiffChange cterm=NONE gui=NONE ctermbg=237 guibg=#3c3836"
vim.cmd "highlight DiffDelete cterm=NONE gui=NONE ctermbg=237 guibg=#3c3836"
vim.cmd "highlight DiffText cterm=NONE gui=NONE ctermbg=237 guibg=#3c3836"


vim.g.mapleader = ","
