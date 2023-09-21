local options = {
	swapfile = false,
	number = true,
	relativenumber = true,
	cursorline = true,
	cursorlineopt = "number",
	hlsearch = false,
	hidden = true,
	backup = false,
	wrap = false,
	exrc = true,
	secure = true,
	autowrite = true,
	modeline = false,
	incsearch = true,
	scrolloff = 8,
	textwidth = 80,
	colorcolumn = '+1',
	signcolumn = 'auto:1',
	termguicolors = true,
	background = 'dark',
	completeopt= 'menu,menuone,noselect',
	list = true,
	listchars = {
		eol = "<",
		tab = "| ",
		trail = ".",
		lead = "."
	},
}

vim.opt.shortmess:append "c"

for k,v in pairs(options) do
	vim.opt[k] = v
end

vim.treesitter.highlighter.hl_map.error = "Underlined"

vim.opt.keymap="russian-jcukenwin"
vim.opt.iminsert=0
vim.opt.langmap="ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
vim.keymap.set({'i', 'n', 'c'}, '<A-Space>', '<C-^>', {noremap = true, silent = true})
