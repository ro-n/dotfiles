if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('mhinz/vim-startify')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('junegunn/goyo.vim')
  call dein#add('junegunn/limelight.vim')
  call dein#add('junegunn/seoul256.vim')
  call dein#add('ianva/vim-youdao-translater')
  call dein#add('matze/vim-move')

  call dein#add('yuttie/comfortable-motion.vim')
  call dein#add('Shougo/neco-vim')
  call dein#add('Shougo/deoplete-clangx')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('preservim/nerdcommenter')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
set number
set relativenumber

" vim-startify
autocmd VimEnter *
  \   if !argc()
  \ |   Startify
  \ |   wincmd w
  \ | endif

if has('nvim')
  autocmd TabNewEntered * Startify
else
  autocmd VimEnter * let t:startify_new_tab = 1
  autocmd BufEnter *
    \ if !exists('t:startify_new_tab') && empty(expand('%')) |
    \   let t:startify_new_tab = 1 |
    \   Startify |
    \ endif
endif

let g:startify_files_number = 10


" junegunn/vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" deoplete.nvim 
let g:deoplete#enable_at_startup = 1


" neosnippet.vim
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
imap <expr><TAB>
  \ pumvisible() ? "\<C-n>" :
  \ neosnippet#expandable_or_jumpable() ?
  \   "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


" limelight.vim
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

" goyo.vim
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" seoul256.vim
let g:seoul256_background = 236
colorscheme seoul256

" vim-youdao-translater
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

" vim-move
let g:move_key_modifier = 'C'
