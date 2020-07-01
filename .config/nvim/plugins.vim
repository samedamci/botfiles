" Plugins
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/bundle')

	" fzf
	Plug '~/.fzf'
	Plug 'junegunn/fzf.vim'

	" linters/deoplete
	Plug 'dense-analysis/ale'

	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
		Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
		Plug 'Shougo/deoplete-clangx'
		Plug 'deoplete-plugins/deoplete-jedi'
		Plug 'deoplete-plugins/deoplete-zsh'
		Plug 'prabirshrestha/async.vim'
		Plug 'prabirshrestha/asyncomplete.vim'
		Plug 'prabirshrestha/vim-lsp'
		Plug 'prabirshrestha/asyncomplete-lsp.vim'

		Plug 'lighttiger2505/deoplete-vim-lsp'
		Plug 'ryanolsonx/vim-lsp-javascript'

	Plug 'ervandew/supertab'
	Plug 'honza/vim-snippets'
	Plug 'Shougo/neosnippet.vim'
	Plug 'Shougo/neosnippet-snippets'

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
	Plug 'chaoren/vim-wordmotion'

	" git
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
let g:lsp_signs_error = {'text': ''}
let g:ale_sign_warning = ''
let g:lsp_signs_warning = {'text': ''}
let g:lsp_signs_hint = {'text': ''} " icons require GUI

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

" emmet-vim
let g:user_emmet_mode='a'
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
set completeopt-=preview

call deoplete#custom#source('ultisnips', 'rank', 1000)
call deoplete#custom#source('zsh', 'filetypes', ['sh', 'zsh'])
call deoplete#custom#option('smart_case', v:false)

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

" for Go language server
if executable('gopls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls']},
        \ 'whitelist': ['go'],
        \ })
    autocmd BufWritePre *.go LspDocumentFormatSync
endif

if executable('go-langserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'go-langserver',
        \ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
        \ 'whitelist': ['go'],
        \ })
    autocmd BufWritePre *.go LspDocumentFormatSync
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
let g:livepreview_previewer = 'zathura'

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
