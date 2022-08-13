--[[
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
]]--
vim.g.mapleader = ","

local opts = { noremap=true, silent=true }
-- Terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
-- Tabs
vim.keymap.set('n', '<Tab>', ':bn<CR>', opts)
-- Telescope
vim.keymap.set('n', '<space>ff', require('telescope.builtin').find_files, opts)
vim.keymap.set('n', '<space>ls', require('telescope.builtin').lsp_document_symbols , opts)
vim.keymap.set('n', '<space>lg', require('telescope.builtin').live_grep , opts)
vim.keymap.set('n', '<space>gs', require('telescope.builtin').grep_string , opts)
vim.keymap.set('n', '<space>mp', require('telescope.builtin').man_pages , opts)
