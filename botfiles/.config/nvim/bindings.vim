"==============
" Key Bindings
"==============
" Leader key
let mapleader = ' '

" Show git commit list
map <Leader>gv :GV<CR>

" enable/disable deoplete
map <Leader>d :call deoplete#toggle()<CR>

" gitgutter maping
map <Leader>gt :GitGutterToggle<CR>
nmap gn <Plug>(GitGutterNextHunk)
nmap gN <Plug>(GitGutterPrevHunk)
nmap gs <Plug>(GitGutterStageHunk)
nmap gu <Plug>(GitGutterUndoHunk)
nmap gp <Plug>(GitGutterPreviewHunk)

" Disable hlsearch
map <C-s> :noh<CR>

" Go to last change
map <Leader>l :'.<CR>

" Complete with <TAB>
" inoremap <expr> <silent> <Tab>  pumvisible()?"\<C-n>":"\<TAB>"
" inoremap <expr> <silent> <S-TAB>  pumvisible()?"\<C-p>":"\<S-TAB>"

" When line overflows, it will go
" one _visual_ line and not actual
map j gj
map k gk

" fzf, fuzzy finder
map <Leader>f :Files<CR>
map <Leader>fg :GFiles<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" vifm
map <Leader>r :Vifm<CR>

" deletes all trailing whitespace
noremap <leader>c :%s/\s\+$//e<cr>

" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)
" imap <c-x><c-l> <plug>(fzf-complete-line)

map <C-n> :NERDTreeToggle<CR>

" SuperTab
let g:SuperTabMappingTabLiteral = '<a-tab>'
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-n>'

" LaTeX
map <Leader>l :LLPStartPreview<CR>

" ALE - Asynchronous Lint Engine
map fw :FixWhitespace<CR>
map <Leader>af :ALEFix<CR>
map <Leader>an :ALENext<CR>
map <Leader>aN :ALEPrevious<CR>
map <Leader>ad :ALEDetail<CR>
map <Leader>ag :ALEGoToDefinitionInSplit<CR>
map <Leader>aG :ALEGoToDefinition<CR>

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

" Spell-check (English US and Polish)
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F7> :setlocal spell! spelllang=pl<CR>

" Sudo read-only file
cnoremap sudow w !sudo tee % >/dev/null

" Open terminal
noremap <C-A-t> :split term://zsh<cr>:resize 10<cr>

" Exit from terminal mode
tnoremap <C-e> <C-\><C-n>

" UltiSnips
let g:UltiSnipsExpandTrigger='<C-z>'
let g:UltiSnipsJumpForwardTrigger='<C-s>'
let g:UltiSnipsJumpBackwardTrigger='<C-g>'
let g:UltiSnipsListSnippets='<C-p>'

