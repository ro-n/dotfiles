if &compatible
  set nocompatible
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

set conceallevel=0

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

call plug#begin(stdpath('config') . '/plugged')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'mhinz/vim-startify'
Plug 'yuttie/comfortable-motion.vim'

call plug#end()

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
  \ { 'type': 'files',     'header': ['   MRU']       },
  \ { 'type': 'commands',  'header': ['   Commands']  },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks'] }
  \ ]
let g:startify_commands = [
  \ ['Vim Reference', 'h ref']
  \ ]
let g:startify_bookmarks = [ 
  \ { 'nvim':  '~/.vimrc' },
  \ { 'zsh':   '~/.zshrc' }
  \ ]

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

" comfortable-motion.vim
let g:comfortable_motion_no_default_key_mappings = 1
nnoremap <silent> <C-d> :call comfortable_motion#flick(50)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-50)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>
