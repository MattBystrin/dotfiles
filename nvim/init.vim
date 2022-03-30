set noswapfile
set number
set nohlsearch
set hidden
set nobackup
set nowrap
set exrc
set secure
set autowrite
set nomodeline
" set undofile
set incsearch
set scrolloff=8
" set smartident
set colorcolumn=80
highlight ColorColumn ctermbg=2
set signcolumn
call plug#begin('~/.vim/plugged')
	if !(&diff)
	Plug 'neovim/nvim-lspconfig' " Native LSP 
	Plug 'hrsh7th/nvim-cmp' " Auto-complete engine
	Plug 'hrsh7th/cmp-nvim-lsp' " Nvim complete with lsp
	Plug 'hrsh7th/cmp-buffer'  " Buffer complete
	Plug 'ray-x/lsp_signature.nvim' " Signature help
	" Plug 'hrsh7th/vim-vsnip' " Snippets
	" Plug 'hrsh7th/cmp-vsnip' " Snippets
	Plug 'nvim-lua/plenary.nvim' " Fuzzy finder
	Plug 'nvim-telescope/telescope.nvim' " Finder
	" Plug 'ludovicchabant/vim-gutentags' Tag autogeneration
	Plug 'tpope/vim-fugitive'
	endif
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Highlight
	Plug 'rakr/vim-one' " Color scheme
	Plug 'vim-airline/vim-airline' " Status line
call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

colorscheme one
set background=dark
let g:airline_theme='one'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 0

" Netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
let g:netrw_browse_split = 0
let g:netrw_fastbrowse = 0 
nnoremap <silent> <A-n> :Lex<Cr>

" Enter normal mode by Esc from terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" Scroll over buffers
nnoremap <silent> <Tab> :bn<CR>
nnoremap <silent> <S-Tab> :bp<CR>

:packadd! termdebug
hi debugPC guifg=#282c34 guibg=#e5c07b
hi debugBreakpoint guibg=darkred

" autocmd BufWritePre * :%s/\s\+$/
" match QuickFixLine /\s\+$/

lua << EOF
vim.g.symbols_outline = {}
local tree = require('nvim-treesitter.configs')
tree.setup({
	highlight  = {
		enable = true,
		additional_vim_regex_highlightning = false,
	},
})
EOF
if !(&diff)
source ~/.config/nvim/lsp.vim

lua << EOF
require'lsp_signature'.setup({
 	bind = true,
 	handler_opts = {
 		border = 'none'
 	},
 	toggle_key = '<C-k>',
	hint_enable = fasle
})
EOF

source ~/.config/nvim/cmp.vim
source ~/.config/nvim/tdbg.vim
source ~/.config/nvim/telescope.vim

nnoremap <silent> <Space>ff :Telescope find_files<CR>
nnoremap <silent> <Space>fs :Telescope lsp_document_symbols<CR>
nnoremap <silent> <Space>lg :Telescope live_grep<CR>

endif
