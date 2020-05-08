"
"                                       ██
"                                      ░░
"    ███████   █████   ██████  ██    ██ ██ ██████████
"   ░░██░░░██ ██░░░██ ██░░░░██░██   ░██░██░░██░░██░░██
"    ░██  ░██░███████░██   ░██░░██ ░██ ░██ ░██ ░██ ░██
"    ░██  ░██░██░░░░ ░██   ░██ ░░████  ░██ ░██ ░██ ░██
"    ███  ░██░░██████░░██████   ░░██   ░██ ███ ░██ ░██
"   ░░░   ░░  ░░░░░░  ░░░░░░     ░░    ░░ ░░░  ░░  ░░


" Load other modules
source $HOME/.config/nvim/statusline.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/bindings.vim

" Basic stuff
syntax on
filetype plugin indent on
set scrolloff=5
set pumheight=10
set autoindent
set smarttab
set number relativenumber
set clipboard=unnamedplus
set inccommand=nosplit
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set undofile
set background=light
set mouse=a
set splitright
set splitbelow
set noshowmode
color biual

highlight OverLength ctermbg=none ctermfg=14 cterm=underline 
match OverLength /\%81v.\+/

" Restore cursor position
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" Python paths, needed for virtualenvs
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

" Language-specific
augroup langindentation
	autocmd Filetype c setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype scss setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype php setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
augroup END

" Encoding
scriptencoding utf-8
