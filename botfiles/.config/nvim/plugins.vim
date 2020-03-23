"=========
" Plugins
"=========
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/bundle')

	" files management
	Plug '~/.fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'jistr/vim-nerdtree-tabs'
	Plug 'vifm/vifm.vim'

	" linters/deoplete
	Plug 'dense-analysis/ale'

	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
		Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
		Plug 'Shougo/deoplete-clangx'
		" Plug 'deoplete-plugins/deoplete-jedi'
		Plug 'deoplete-plugins/deoplete-zsh'
		Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
		Plug 'prabirshrestha/async.vim'
		Plug 'prabirshrestha/asyncomplete.vim'
		Plug 'prabirshrestha/vim-lsp'
		Plug 'prabirshrestha/asyncomplete-lsp.vim'

		Plug 'lighttiger2505/deoplete-vim-lsp'
		Plug 'ryanolsonx/vim-lsp-javascript'

	Plug 'ervandew/supertab'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'

	Plug 'mattn/emmet-vim'

	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'jiangmiao/auto-pairs'

	Plug 'sheerun/vim-polyglot'
	Plug 'luochen1990/rainbow'

	Plug 'matze/vim-move'
	Plug 'reedes/vim-pencil'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

	" git
	Plug 'tpope/vim-fugitive'
	Plug 'junegunn/gv.vim'
	Plug 'airblade/vim-gitgutter'

	" syntax
	Plug 'bfrg/vim-cpp-modern'
	Plug 'udalov/kotlin-vim'
	Plug 'vim-python/python-syntax'
	Plug 'jelera/vim-javascript-syntax'
call plug#end()

"========
" Config
"========
" ALE
let g:ale_sign_error = ''
let g:lsp_signs_error = {'text': ''}
let g:ale_sign_warning = ''
let g:lsp_signs_warning = {'text': ''}
" let g:lsp_signs_error = {'', 'icon': '/path/to/some/icon'} " icons require GUI
let g:lsp_signs_hint = {'text': ''} " icons require GUI

let g:ale_linters = {
\   'c': ['ccls', 'clang'],
\   'cpp': ['ccls', 'clang'],
\   'javascript': ['eslint'],
\   'php': ['php'],
\   'python': ['flake8'],
\   'sh': ['language_server', 'shellcheck', 'shell'],
\   'zsh': ['language_server', 'shellcheck', 'shell'],
\   'go': ['gofmt'],
\   'kotlin': ['ktlint'],
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
\   'python': ['autopep8', 'isort', 'black', 'add_blank_lines_for_python_control_statements'],
\   'scss': ['prettier'],
\   'yaml': ['prettier'],
\}

let g:ale_python_autopep8_use_global = 1
let g:ale_python_black_use_global = 1

" fzf
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_layout = { 'down': '~40%' }
let g:fzf_preview_window = 'right:60%'

" gitgutter
set updatetime=1000

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" emmet-vim
let g:user_emmet_mode='a'
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" deoplete
let g:deoplete#enable_at_startup = 1
" let deoplete#tag#cache_limit_size = 5000000
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:deoplete#enable_ignore_case = 1
set completeopt-=preview

call deoplete#custom#source('ultisnips', 'rank', 1000)
call deoplete#custom#source('zsh', 'filetypes', ['sh', 'zsh'])
call deoplete#custom#option('smart_case', v:false)

let g:deoplete#sources#go#gocode_binary = "$HOME/go/bin/gocode"

" For python language server
if (executable('pyls'))
    augroup LspPython
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'pyls',
      \ 'cmd': {server_info->['pyls']},
      \ 'whitelist': ['python']
      \ })
    augroup END
endif

" for JS language server
if (executable('typescript-language-server'))
    augroup LspJavaScript
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'js-ls',
      \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
      \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact']
      \ })
    augroup END
endif

if (executable('ccls'))
	augroup LspCpp
		autocmd!
   		autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': {},
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
	augroup END
endif

let g:lsp_diagnostics_enabled = 1 
let g:lsp_signs_enabled = 1 
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_highlights_enabled = 0
let g:lsp_textprop_enabled = 0
let g:lsp_virtual_text_enabled = 0
let g:lsp_highlight_references_enabled = 1

" autopairs
let g:AutoPairs={'(':')', '[':']', '{':'}', "'":"'", '"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"} "'<':'>',

" LaTeX
let g:livepreview_previewer = 'mupdf'

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


