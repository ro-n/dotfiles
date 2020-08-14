if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  
  " Completion
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neosnippet.vim')

  " C++
  call dein#add('Shougo/deoplete-clangx')
  " Go
  " Java
  " Python
  call dein#add('deoplete-plugins/deoplete-jedi')
  " TypeScript
  " VimScript
  call dein#add('Shougo/neco-vim')

  " Appearance
  call dein#add('junegunn/goyo.vim')
  call dein#add('junegunn/limelight.vim')
  call dein#add('junegunn/seoul256.vim')

  " Others
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('matze/vim-move')
  call dein#add('mhinz/vim-startify')
  call dein#add('ms-jpq/chadtree')
  call dein#add('preservim/nerdcommenter')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-surround')
  call dein#add('vifm/vifm.vim')
  call dein#add('voldikss/vim-translator')
  call dein#add('yuttie/comfortable-motion.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set number
set relativenumber

set splitbelow
set splitright

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

let mapleader = ','

nnoremap <Up>    :resize          +2<CR>
nnoremap <Down>  :resize          -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

nnoremap <Leader>/ :nohl <CR>
nnoremap Q <nop>

set statusline=
set statusline+=\ %F
set statusline+=\ %M
set statusline+=\ %r
set statusline+=\ %y
set statusline+=%=
set statusline+=\ %p%%
set statusline+=\ [%n]

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
let g:startify_files_number = 5
let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   MRU']            },
  \ { 'type': 'commands',  'header': ['   Commands']       }
  \ ]
let g:startify_commands = [
  \ ['Vim Reference', 'h ref']
  \ ]

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
map <ENTER> :Goyo<CR>
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

" vim-move
let g:move_key_modifier = 'C'

" comfortable-motion.vim
let g:comfortable_motion_no_default_key_mappings = 1
nnoremap <silent> <C-d> :call comfortable_motion#flick(50)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-50)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

" vim-translator
nmap <silent> <Leader>t <Plug>Translate
vmap <silent> <Leader>t <Plug>TranslateV

" chadtree
nnoremap <leader>v <cmd>CHADopen<cr>

" vifm.vim
map <Space> :EditVifm .<CR>
