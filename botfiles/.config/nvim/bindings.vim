"==============
" Key Bindings
"==============
" Leader key
let mapleader = ' '

"~~~~~
" Git
"~~~~~
" Show git commit list
map <Leader>gv :GV<CR>

" Show status
nnoremap <Leader>gs :Git<CR>

" Pull
nnoremap <Leader>gpu :Gpull<CR>

"~~~~~~~~~~~~~~~~~
" File Management
"~~~~~~~~~~~~~~~~~
" fzf
nmap <silent> <Leader>f :Files<CR>
nmap <silent> <Leader>fg :GFiles<CR>

" vifm
nmap <silent> <Leader>r :Vifm<CR>

" NERDTree
map <silent> <Leader>n :NERDTreeToggle<CR>

"~~~~~~~~~
" Linters
"~~~~~~~~~
" Deletes all trailing whitespaces
noremap <leader>c :%s/\s\+$//e<cr>

" Enable/disable deoplete
map <Leader>d :call deoplete#toggle()<CR>

" ALE
map fw :FixWhitespace<CR>
map <Leader>af :ALEFix<CR>
map <Leader>an :ALENext<CR>
map <Leader>aN :ALEPrevious<CR>
map <Leader>ad :ALEDetail<CR>
map <Leader>ag :ALEGoToDefinitionInSplit<CR>
map <Leader>aG :ALEGoToDefinition<CR>

" LSP
nnoremap <silent> <C-]> :LspNextDiagnostic<CR>
nnoremap <silent> <C-[> :LspPreviousDiagnostic<CR>

" Spell-check (English US and Polish)
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F7> :setlocal spell! spelllang=pl<CR>

"~~~~~~~~~~~~~~~~~~
" Window Managment
"~~~~~~~~~~~~~~~~~~
" Tab Managment
map <S-o> :tabnew<CR>
map <S-d> :tabclose<CR>
nnoremap <S-j> gt
nnoremap <S-k> gT

" Split Managment
nnoremap <C-A-j> <C-w><C-j>
nnoremap <C-A-k> <C-w><C-k>
nnoremap <C-A-l> <C-w><C-l>
nnoremap <C-A-h> <C-w><C-h>

" Open terminal
noremap <C-A-t> :split term://zsh<cr>:resize 10<cr>

" Exit from terminal mode
tnoremap <C-e> <C-\><C-n>


"~~~~~~~
" Other
"~~~~~~~
" Sudo read-only file
cnoremap sudow w !sudo tee % >/dev/null

" Disable hlsearch
map <silent> <C-s> :noh<CR>

" Go to last change
map <Leader>l :'.<CR>

map j gj
map k gk

" SuperTab
let g:SuperTabMappingTabLiteral = '<a-tab>'
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-n>'
