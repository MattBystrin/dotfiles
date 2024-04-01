vim.g.mapleader = ","

local opts = { noremap=false, silent=true }
-- System clipboard yank&paste
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
vim.keymap.set('n', '<leader>m', ':make!<CR>', {noremap = false, silent = false})
vim.keymap.set('n', '<leader>M', ':make<CR>', {noremap = false, silent = false})
vim.keymap.set('n', '<leader>t', '<Plug>PlenaryTestFile', {noremap = false, silent = false})
-- Bash evaluation
vim.keymap.set('n', '<leader>b', ':.w !bash<CR>', opts)
vim.keymap.set('v', '<leader>b', ':w !bash<CR>', opts)
-- Buf wipe without closing windows
vim.keymap.set('n', '<leader>w', '<cmd>bp|bw #<CR>', opts)
-- Terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
-- Bufs
vim.keymap.set('n', '<C-l>', ':bn<CR>', opts)
vim.keymap.set('n', '<C-h>', ':bp<CR>', opts)
-- Tabs
vim.keymap.set('n', '<C-j>', ':tabn<CR>', opts)
vim.keymap.set('n', '<C-k>', ':tabp<CR>', opts)
-- Telescope <3 Thanks TJ !!!
local tbi = require('telescope.builtin')
vim.keymap.set('n', '<space>ff', tbi.find_files,                opts)
vim.keymap.set('n', '<space>ls', tbi.lsp_document_symbols ,     opts)
vim.keymap.set('n', '<space>lg', tbi.live_grep ,                opts)
vim.keymap.set('n', '<space>gs', tbi.grep_string,               opts)
vim.keymap.set('n', '<space>mp', tbi.man_pages,                 opts)
vim.keymap.set('n', '<space>b',  tbi.buffers,                   opts)
vim.keymap.set('n', '<space>h',  tbi.help_tags,                 opts)
-- Tags keymaps
vim.keymap.set('n', 'gt', '<C-]>', opts)
-- Tags completion
vim.keymap.set('i', '<C-n>', '<C-x><C-]>', opts)
-- Debug keymaps
local gdb = require'gdb'
vim.keymap.set('n', '<space>ds', gdb.debug_start, opts)
vim.keymap.set('n', '<space>dS', gdb.debug_stop,  opts)
-- Program execution
vim.keymap.set('n', '<F6>',      gdb.next,        opts)
vim.keymap.set('n', '<F7>',      gdb.step,        opts)
vim.keymap.set('n', '<F8>',      gdb.stop,        opts)
vim.keymap.set('n', '<F9>',      gdb.finish,      opts)
vim.keymap.set('n', '<F5>',      gdb.continue,    opts)
vim.keymap.set('n', '<F3>',      gdb.exec_until,  opts)
vim.keymap.set('n', '<F2>',      gdb.bkpt,        opts)
vim.keymap.set('n', '<space>de', gdb.bkpt_en,     opts)
vim.keymap.set('n', '<space>dp', gdb.printf,      opts)
vim.keymap.set('n', '<space>dj', gdb.jump,        opts)
