" Install vim-plug if is not installed yet.
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Initialize plugins
call plug#begin('~/.config/nvim/bundle')
	Plug '~/.fzf'
	Plug 'junegunn/fzf.vim'

	Plug 'dense-analysis/ale'

	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
		Plug 'Shougo/deoplete-clangx'
		Plug 'deoplete-plugins/deoplete-jedi'
		Plug 'deoplete-plugins/deoplete-zsh'

	Plug 'ervandew/supertab'

	" Snippets
	Plug 'Shougo/neosnippet.vim'
	Plug 'samedamci/snippets'

	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'alvan/vim-closetag'

	Plug 'sheerun/vim-polyglot'
	Plug 'luochen1990/rainbow'

	Plug 'reedes/vim-pencil'
	Plug 'chaoren/vim-wordmotion'
	Plug 'matze/vim-move'

	Plug 'airblade/vim-gitgutter'

	" syntax
	Plug 'bfrg/vim-cpp-modern'
	Plug 'vim-python/python-syntax'
	Plug 'jelera/vim-javascript-syntax'
call plug#end()

"========
" Config
"========
" ALE
let g:ale_sign_error = ''
let g:ale_sign_warning = ''

let g:ale_linters = {
\   'c': ['ccls'],
\   'cpp': ['ccls'],
\   'javascript': ['eslint'],
\   'php': ['php'],
\   'python': ['flake8'],
\   'sh': ['language_server', 'shellcheck', 'shell'],
\   'zsh': ['language_server', 'shellcheck', 'shell'],
\   'go': ['gofmt'],
\}
let g:ale_fixers = {
\   '*': ['trim_whitespace', 'remove_trailing_lines'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'css': ['prettier'],
\   'go': ['gofmt'],
\   'html': ['prettier'],
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\   'php': ['prettier'],
\   'python': ['black'],
\   'scss': ['prettier'],
\   'yaml': ['prettier'],
\}

let g:ale_python_autopep8_use_global = 1
let g:ale_python_black_use_global = 1

" fzf
let g:fzf_layout = {
\  'up':'~90%',
\  'window':
\  {
\    'width': 0.7,
\    'height': 0.7,
\    'yoffset':0.5,
\    'xoffset': 0.5,
\    'border': 'sharp'
\  }
\}
let g:fzf_preview_window = 'right:55%'

" gitgutter
set updatetime=1000

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1

call deoplete#custom#source('ultisnips', 'rank', 1000)
call deoplete#custom#source('zsh', 'filetypes', ['sh', 'zsh'])
call deoplete#custom#option('smart_case', v:false)
set completeopt-=preview

" vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

" Enable "Rainbow Parentheses Improved"
let g:rainbow_active = 1

" pencil
augroup pencil
	autocmd!
	autocmd FileType markdown call pencil#init({'wrap': 'soft', 'autoformat': 1})
	autocmd FileType tex call pencil#init({'wrap': 'soft', 'autoformat': 1})
augroup END

" python syntax
let g:python_highlight_all = 1
