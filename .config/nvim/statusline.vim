"============
" Statusline
"============

function! Mode(mode) " {{{
	" normal mode
	if a:mode == 'n'
		return ' normal '
	" insert mode
	elseif a:mode == 'i'
		return ' insert '
	" replace mode
	elseif a:mode == 'R'
		return ' replace '
	" visual mode
	elseif a:mode == 'v'
		return ' visual '
	" visual block mode
	elseif a:mode == ''
		return ' v-block '
	" command mode
	elseif a:mode == 'c'
		return ' command '
	" terminal mode
	elseif a:mode == 't'
		return ' terminal '
	endif
	" Return empty string so as not to display anything in the statusline
	return ' '
endfunction
" }}}

" modification mark
function! SetModifiedSymbol(modified) " {{{
	if a:modified == 1
		hi MyStatuslineModifiedBody ctermbg=NONE cterm=NONE ctermfg=3
		return ' (+) '
	else
		hi MyStatuslineModifiedBody ctermbg=NONE cterm=bold ctermfg=7
		return ' '
	endif
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

set statusline=%#MyStatuslineSeparator#\ \ 
set statusline+=%{Mode(mode())}

" filename
set statusline+=%#MyStatuslineSeparator#\ \ 
set statusline+=%#MyStatuslineFilename#%t
set statusline+=%#MyStatuslineSeparator#\ \ 
" Modified status
set statusline+=%#MyStatuslineModifiedBody#%{SetModifiedSymbol(&modified)}%#Reset#

set statusline+=%=
set statusline+=%{FugitiveStatusline()}
set statusline+=%#MyStatuslineSeparator#\ \ 
set statusline+=%#MyStatuslineLineCol#
set statusline+=%l,%c
set statusline+=%#MyStatuslineSeparator#\ \ 
" set statusline+=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
set statusline+=%#MyStatuslineSeparator#\ \ 
set statusline+=\%#MyStatuslineFiletype#%{SetFiletype(&filetype)}



