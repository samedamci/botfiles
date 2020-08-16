" Mode icon
function! Mode(mode)
	if a:mode == 'n' 			" Normal
		return '   '
	elseif a:mode == 'i' 	" Insert
		return '   '
	elseif a:mode == 'R' 	" Replace
		return '   '
	elseif a:mode == 'v' 	" Visual
		return '   '
	elseif a:mode == '' " Visual Block
		return '   '
	elseif a:mode == 'c'  " Command
		return '   '
	elseif a:mode == 't'  " Terminal
		return '   '
	endif

	return ' '
endfunction


" Modification mark
function! SetModifiedSymbol(modified)
	if a:modified == 1
		hi MyStatuslineModifiedBody ctermbg=NONE cterm=NONE ctermfg=3
	else
		hi MyStatuslineModifiedBody ctermbg=NONE cterm=bold ctermfg=8
	endif
	return ' '
endfunction


" Filetype
function! SetFiletype(filetype)
	if a:filetype == ''
		return 'unknown'
	else
		return a:filetype
	endif
endfunction


" Set elements and decorators
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
