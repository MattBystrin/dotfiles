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
	" Omni func migration ???
	Plug 'hrsh7th/nvim-cmp' " Auto-complete engine
	Plug 'hrsh7th/cmp-nvim-lsp' " Nvim complete with lsp
	Plug 'hrsh7th/cmp-buffer'  " Buffer complete
	Plug 'ray-x/lsp_signature.nvim' " Signature help
	Plug 'hrsh7th/cmp-vsnip' " Snippets
	Plug 'hrsh7th/vim-vsnip' " Snippets
	Plug 'nvim-lua/plenary.nvim' " Handy functions
	Plug 'nvim-telescope/telescope.nvim' " Finder
	" Plug 'ludovicchabant/vim-gutentags' Tag autogeneration
	Plug 'tpope/vim-fugitive'
	Plug 'junegunn/goyo.vim'
	endif
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Highlight
	Plug 'rakr/vim-one' " Color scheme
	Plug 'gruvbox-community/gruvbox'
	Plug 'vim-airline/vim-airline' " Status line
	Plug 'vim-airline/vim-airline-themes' " Status line
call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 0

" autocmd FileType netrw setl bufhidden=delete
nnoremap <silent> <M-n> :Ex<Cr>

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

let mapleader=","
" autocmd BufWritePre * :%s/\s\+$/
" match QuickFixLine /\s\+$/
nnoremap <leader>r :echo "run"<CR>
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

autocmd! filetype rust
autocmd filetype rust setlocal makeprg=cargo

nnoremap <silent> <Space>ff :Telescope find_files<CR>
nnoremap <silent> <Space>fs :Telescope lsp_document_symbols<CR>
nnoremap <silent> <Space>lg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <silent> <Space>gw :lua require('telescope.builtin').grep_string()<CR>
nnoremap <silent> <Space>mp :Telescope man_pages<CR>

endif
