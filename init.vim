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

set updatetime=300

set conceallevel=0

let mapleader = ','

set mouse=a

nnoremap <Up>    :resize          +2<CR>
nnoremap <Down>  :resize          -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

nnoremap <Leader>/ :nohl <CR>
nnoremap Q <nop>

call plug#begin(stdpath('config') . '/plugged')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'glepnir/dashboard-nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-commentary'

Plug 'junegunn/vim-easy-align'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'justinmk/vim-sneak'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'christoomey/vim-system-copy'

call plug#end()

" goyo.vim & limelight.vim
let g:limelight_conceal_ctermfg = 'DarkGrey' 
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
" colorscheme seoul256
colorscheme nord

" vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1

" comfortable-motion.vim
let g:comfortable_motion_no_default_key_mappings = 1
nnoremap <silent> <C-d> :call comfortable_motion#flick(50)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-50)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

" dashboard-nvim
let g:dashboard_default_executive ='fzf'

nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>

nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

let g:dashboard_custom_header =[
    \'          ▀████▀▄▄              ▄█ ',
    \'            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
    \'    ▄        █          ▀▀▀▀▄  ▄▀  ',
    \'   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
    \'  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
    \'  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
    \'   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
    \'    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
    \'   █   █  █      ▄▄           ▄▀   ',
    \]

let g:dashboard_custom_shortcut_icon                       = {}
let g:dashboard_custom_shortcut_icon['last_session']       = '⏳ '
let g:dashboard_custom_shortcut_icon['find_history']       = '📜 '
let g:dashboard_custom_shortcut_icon['find_file']          = '📂 '
let g:dashboard_custom_shortcut_icon['new_file']           = '✨ '
let g:dashboard_custom_shortcut_icon['change_colorscheme'] = '🍭 '
let g:dashboard_custom_shortcut_icon['find_word']          = '🈁 '
let g:dashboard_custom_shortcut_icon['book_marks']         = '🏷️  '

" let g:dashboard_custom_section = {
"   \ 'buffer_list': {
"       \ 'description': [' Recently lase session                 SPC b b'],
"       \ 'command': ':e .vimrc'}
"   \ }

" coc.nvim
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

" preservim/nerdtree
nnoremap <leader>n :NERDTreeTabsToggle<CR>
let g:NERDTreeWinPos     = "right"
let g:NERDTreeWinSize    = 60
let g:NERDTreeShowHidden = 1

" junegunn/vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" justinmk/vim-sneak
highlight link Sneak Search
