require('plugins')
require('options')
require('keymaps')

require('plugspec/lsp')
require('plugspec/cmp')
require('plugspec/telescope')
require('plugspec/treesitter')
require('plugspec/dap')
require('plugspec/misc')

vim.cmd "colorscheme gruvbox"

vim.g.mapleader = ","
