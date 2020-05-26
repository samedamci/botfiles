"==============
" Key Bindings
"==============
" Leader key
let mapleader = ' '
let g:move_key_modifier = 'A'

"~~~~~~~~~~~~~~~~~
" File Management
"~~~~~~~~~~~~~~~~~
" fzf
nmap <silent> <Leader>f :Files<CR>
nmap <silent> <Leader>fg :GFiles<CR>

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

" Open terminal
noremap <C-A-t> :split term://zsh<cr>:resize 10<cr>

" Exit from terminal mode
tnoremap <C-e> <C-\><C-n>

"~~~~~~~
" Other
"~~~~~~~
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

" neosnippets
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
