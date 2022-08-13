local options = {
	swapfile = false,
	number = true,
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
	signcolumn = 'auto:2',
	termguicolors = true,
	background = 'dark',
	completeopt= 'menu,noselect'
}

vim.opt.shortmess:append "c"

for k,v in pairs(options) do
	vim.opt[k] = v
end

