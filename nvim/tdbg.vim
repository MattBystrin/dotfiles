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

function SaveBp()
	call inputsave()
	let name = input('Save breakpoints: ')
	call inputrestore()
	call TermDebugSendCommand('save breakpoints ' . name)
endfunction

function LoadBp()
	call inputsave()
	let name = input('Load breakpoints: ')
	call inputrestore()
	call TermDebugSendCommand('source ' . name)
endfunction

function Close()
	call TermDebugSendCommand('q')
	call TermDebugSendCommand('y')
	Gdb
endfunction

let g:gdbsrvcmd = "gdbserver --multi localhost:3333"
function StartServer()
	if !exists('s:srvid')
		let s:srvid = jobstart(g:gdbsrvcmd)
		if s:srvid == -1
			echoerr 'Failed to start GDB server'
			return
		endif
	else
		echoerr 'Server already running'
	endif
endfunction

function StopServer()
	if exists('s:srvid')
		call jobstop(s:srvid)
		unlet s:srvid
	else
		echoerr 'No server running'
	endif
endfunction

noremap <silent> <F10> :Termdebug<CR>
noremap <silent> <S-F10> :call Close()<CR>
nnoremap <silent> <Space>sb :call SaveBp()<CR>
nnoremap <silent> <Space>lb :call LoadBp()<CR>
nnoremap <silent> <Space>db :call TermDebugSendCommand('delete breakpoints')<CR>
nnoremap <silent> <Space>ib :call TermDebugSendCommand('info break')<CR>
nnoremap <silent> <Space>il :call TermDebugSendCommand('info locals')<CR>
nnoremap <silent> <Space>ia :call TerDebugSendCommand('info args')<CR>

" au User TermdebugStartPost autocmd :call TermDebugSendCommand('file ' . debugfile)<CR>
