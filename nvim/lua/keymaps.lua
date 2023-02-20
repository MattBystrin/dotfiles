--[[
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
]]--
vim.g.mapleader = ","

local opts = { noremap=false, silent=true }
-- System buffer yank&paste
vim.keymap.set('n', '<leader>y', '"+y', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>y', '"+y', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>p', '"+p', opts)
vim.keymap.set('v', '<leader>p', '"+p', opts)
-- Window resize
vim.keymap.set('n', '<A-h>', '<C-w><', opts)
vim.keymap.set('n', '<A-j>', '<C-w>+', opts)
vim.keymap.set('n', '<A-k>', '<C-w>-', opts)
vim.keymap.set('n', '<A-l>', '<C-w>>', opts)
-- Lua launch
vim.keymap.set('n', '<leader>l', ':luafile %<CR>', {noremap = false, silent = false})
vim.keymap.set('n', '<leader>m', ':make<CR>', {noremap = false, silent = false})
vim.keymap.set('n', '<leader>M', ':make!<CR>', {noremap = false, silent = false})
vim.keymap.set('n', '<leader>t', '<Plug>PlenaryTestFile', {noremap = false, silent = false})
-- Terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
-- Tabs
vim.keymap.set('n', '<C-l>', ':bn<CR>', opts)
vim.keymap.set('n', '<C-h>', ':bp<CR>', opts)
vim.keymap.set('n', '<C-j>', ':tabn<CR>', opts)
vim.keymap.set('n', '<C-k>', ':tabp<CR>', opts)
-- Telescope <3 Thanks TJ !!!
vim.keymap.set('n', '<space>ff', require('telescope.builtin').find_files, opts)
vim.keymap.set('n', '<space>ls', require('telescope.builtin').lsp_document_symbols , opts)
vim.keymap.set('n', '<space>lg', require('telescope.builtin').live_grep , opts)
vim.keymap.set('n', '<space>gs', require('telescope.builtin').grep_string , opts)
vim.keymap.set('n', '<space>mp', require('telescope.builtin').man_pages , opts)
vim.keymap.set('n', '<space>b', require('telescope.builtin').buffers , opts)
vim.keymap.set('n', '<space>h', require('telescope.builtin').help_tags, opts)
-- Debug keymaps
vim.keymap.set('n', 'gt', '<C-]>', opts)
--[[ ,db
,dc
,du
,dd
,dl ]]
