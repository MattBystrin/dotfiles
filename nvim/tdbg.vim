" Termdubug settings
:packadd! termdebug

hi debugPC guifg=#282c34 guibg=#e5c07b
hi debugBreakpoint guibg=darkred
let g:termdebug_wide = 1 

nnoremap <silent> <F4> :Break<CR>
noremap <silent> <S-F4> :Clear<CR>
noremap <silent> <F5> :Continue<CR>
noremap <silent> <F6> :Over<CR>
noremap <silent> <S-F5> :Stop<CR>
noremap <silent> <F7> :Finish<CR>
noremap <silent> <F8> :Step<CR>
" :Evaluate
" :Run
noremap <F10> :Termdebug<CR>:call TermDebugSendCommand('source .breakpoints')<CR>
noremap <silent> <S-F10> :call TermDebugSendCommand('save breakpoints .breakpoints')<CR>:Gdb<CR>:bw!<CR><CR> 
nnoremap <silent> <Space>db :call TermDebugSendCommand('delete breakpoints')<CR>
nnoremap <silent> <Space>il :call TermDebugSendCommand('info locals')<CR>
nnoremap <silent> <Space>ia :call TermDebugSendCommand('info args')<CR>
nnoremap <silent> <Space>ib :call TermDebugSendCommand('info break')<CR>

