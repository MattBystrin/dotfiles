--[[
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
]]--
vim.g.mapleader = ","

local opts = { noremap=false, silent=true }
-- Window resize
vim.keymap.set('n', '<A-h>', '<C-w><', opts)
vim.keymap.set('n', '<A-j>', '<C-w>+', opts)
vim.keymap.set('n', '<A-k>', '<C-w>-', opts)
vim.keymap.set('n', '<A-l>', '<C-w>>', opts)
-- Lua launch
vim.keymap.set('n', '<leader>l', ':luafile %<CR>', {noremap = false, silent = false})
vim.keymap.set('n', '<leader>t', '<Plug>PlenaryTestFile', {noremap = false, silent = false})
-- Terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
-- Tabs
vim.keymap.set('n', '<Tab>', ':bn<CR>', opts)
-- Telescope <3 (Btw thanks TJ)
vim.keymap.set('n', '<space>ff', require('telescope.builtin').find_files, opts)
vim.keymap.set('n', '<space>ls', require('telescope.builtin').lsp_document_symbols , opts)
vim.keymap.set('n', '<space>lg', require('telescope.builtin').live_grep , opts)
vim.keymap.set('n', '<space>gs', require('telescope.builtin').grep_string , opts)
vim.keymap.set('n', '<space>mp', require('telescope.builtin').man_pages , opts)
vim.keymap.set('n', '<space>b', require('telescope.builtin').buffers , opts)
vim.keymap.set('n', '<space>h', require('telescope.builtin').help_tags, opts)
-- Debug keymaps
--[[ ,db
,dc
,du
,dd
,dl ]]
