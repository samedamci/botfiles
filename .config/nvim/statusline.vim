"============
" Statusline
"============

function! Mode(mode) " {{{
	" normal mode
	if a:mode == 'n'
		return '   '
	" insert mode
	elseif a:mode == 'i'
		return '   '
	" replace mode
	elseif a:mode == 'R'
		return '   '
	" visual mode
	elseif a:mode == 'v'
		return '   '
	" visual block mode
	elseif a:mode == ''
		return '   '
	" command mode
	elseif a:mode == 'c'
		return '   '
	" terminal mode
	elseif a:mode == 't'
		return '   '
	endif
	" Return empty string so as not to display anything in the statusline
	return ' '
endfunction
" }}}

" modification mark
function! SetModifiedSymbol(modified) " {{{
	if a:modified == 1
		hi MyStatuslineModifiedBody ctermbg=NONE cterm=NONE ctermfg=3
	else
		hi MyStatuslineModifiedBody ctermbg=NONE cterm=bold ctermfg=8
	endif
	return ' '
endfunction
" }}}

" filetype
function! SetFiletype(filetype) " {{{
	if a:filetype == ''
		return '-'
	else
		return a:filetype
	endif
endfunction
" }}}

set statusline=%#MyStatuslineSeparator#\ "
set statusline+=%{Mode(mode())}

set statusline+=%#MyStatuslineSeparator#\ "
set statusline+=%#MyStatuslineLineCol#
set statusline+=%l,%c

set statusline+=%=
set statusline+=\%#MyStatuslineFiletype#%{SetFiletype(&filetype)}
set statusline+=%#MyStatuslineSeparator#\ \ "
set statusline+=%#MyStatuslineFilename#%t
set statusline+=%#MyStatuslineSeparator#\ \ "
set statusline+=%#MyStatuslineModifiedBody#%{SetModifiedSymbol(&modified)}%#Reset#
