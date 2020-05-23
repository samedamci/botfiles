"
"                       ██
"                      ░██
"      █████   ██████  ░██  ██████  ██████  ██████
"     ██░░░██ ██░░░░██ ░██ ██░░░░██░░██░░█ ██░░░░
"    ░██  ░░ ░██   ░██ ░██░██   ░██ ░██ ░ ░░█████
"    ░██   ██░██   ░██ ░██░██   ░██ ░██    ░░░░░██
"    ░░█████ ░░██████  ███░░██████ ░███    ██████
"     ░░░░░   ░░░░░░  ░░░  ░░░░░░  ░░░    ░░░░░░

if exists('syntax_on')
    syntax reset
endif

hi clear

hi TabLine               ctermfg=NONE     ctermbg=NONE        cterm=NONE
hi TabLineSel            ctermfg=4        ctermbg=NONE        cterm=bold
hi TabLineFill           ctermfg=NONE     ctermbg=NONE        cterm=NONE
hi Title                 ctermfg=15       ctermbg=NONE        cterm=NONE

hi LineNr                ctermfg=238                        cterm=none
hi CursorLineNr          ctermfg=220      ctermbg=8         cterm=bold
hi ColorColumn           ctermfg=1        ctermbg=0         cterm=undercurl
hi SignColumn            ctermfg=7 				ctermbg=none
hi VertSplit             ctermfg=0        ctermbg=8

hi Comment               ctermfg=4
hi String                ctermfg=1

hi Visual                                 ctermbg=8
hi Search                                 ctermbg=8         cterm=bold,reverse
hi MatchParen            ctermfg=3        ctermbg=0          cterm=bold
hi Statement             ctermfg=3

hi ErrorMsg              ctermfg=1        ctermbg=none
hi Error                 ctermfg=0        ctermbg=1         cterm=undercurl

hi SpellBad              ctermfg=0        ctermbg=1         cterm=undercurl
hi SpellCap              ctermfg=0        ctermbg=2         cterm=undercurl
hi SpellRare             ctermfg=0        ctermbg=none      cterm=undercurl
hi SpellLocal            ctermfg=0        ctermbg=5         cterm=undercurl

hi DiffAdd               ctermfg=0        ctermbg=2
hi DiffChange            ctermfg=0        ctermbg=4
hi DiffDelete            ctermfg=0        ctermbg=1
hi DiffText              ctermfg=0        ctermbg=4

hi Folded                                 ctermbg=8
hi FoldColumn                             ctermbg=8

hi Pmenu                   ctermfg=4      ctermbg=233
hi PmenuSel                ctermfg=4      ctermbg=8
hi PmenuThumb              ctermfg=8      ctermbg=8
hi PmenuSbar               ctermfg=0      ctermbg=0
hi StatusLineNC          	 ctermfg=8      ctermbg=NONE        cterm=bold
hi StatusLine            	 ctermfg=14     ctermbg=NONE        cterm=NONE
hi MyStatuslineFilename    ctermfg=12      ctermbg=NONE
hi MyStatuslineFiletype    ctermfg=9      ctermbg=none        cterm=italic

hi MyStatuslineLineCol     ctermfg=1      ctermbg=none        cterm=none
hi MyStatuslineLinePerc    ctermfg=2      ctermbg=none        cterm=none
hi CursorLine                       ctermbg=8          cterm=NONE
hi CursorColumn                     ctermbg=8           cterm=NONE

" ALE
hi ALEWarning                               cterm=undercurl
hi ALEError                                 cterm=undercurl
hi ALEWarningSign   ctermbg=none   ctermfg=3   cterm=bold
hi ALEErrorSign     ctermbg=none   ctermfg=1   cterm=bold

" LSP
hi LspWarningText ctermfg=3 ctermbg=none cterm=bold
hi LspHintText ctermfg=3 ctermbg=none cterm=none
hi LspErrorLine ctermfg=red cterm=undercurl
hi LspErrorText ctermfg=red ctermbg=none

" Cursorline highlight
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Files
hi Win      ctermfg=white      ctermbg=none      cterm=none
hi Directory    ctermfg=blue      ctermbg=none      cterm=bold
hi Link      ctermfg=cyan      ctermbg=none      cterm=none
hi BrokenLink  ctermfg=red        ctermbg=none      cterm=bold
hi Socket    ctermfg=magenta      ctermbg=none      cterm=bold
hi Device    ctermfg=red        ctermbg=none      cterm=bold
hi Fifo      ctermfg=red        ctermbg=none      cterm=bold
" hi Executable  ctermfg=0      ctermbg=1      cterm=bold

" Syntax

hi Comment ctermfg=10
hi Constant ctermfg=3 cterm=none
hi Identifier ctermfg=180
hi Statement ctermfg=13 cterm=italic
hi PreProc ctermfg=13
hi Type ctermfg=12 cterm=bold
hi Special ctermfg=135
" hi Error ctermfg=0

" githutter
hi GitGutterChange  ctermbg=none   ctermfg=3    cterm=bold
hi GitGutterAdd     ctermbg=none   ctermfg=2    cterm=bold
hi GitGutterDelete  ctermbg=none   ctermfg=1    cterm=bold
hi GitGutterChangeDelete ctermbg=none ctermfg=5 cterm=bold
