set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/ZoomWin'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'


filetype plugin indent on

set mouse=nv " Disable mouse in insert mode
set nowrap " Don't wrap long lines
set nocompatible " Disable ancient compatibility
set ls=2 " Show status line always
set tabstop=4 " defaul tab is 4 spaces
set softtabstop=4 
set shiftwidth=4
set showmode
set incsearch " show results as you type
set ruler
set number
set ignorecase
set smartcase
set ttyfast " optimize for fast tty
set so=7 " Set 7 lines to the cursor when moving vertical
set ss=1
set siso=10
set listchars+=precedes:<,extends:>
set backspace=eol,start,indent " smart backspace

set expandtab
set sm
" NerdTree on F3
map <F3> :NERDTreeToggle<CR> 
" ZoomWin on F4
map <F4> :ZoomWin<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" leader-space to remove search highlights
map <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

set clipboard=unnamedplus " yy and p uses system clipboard
" Ack does not open the first result
cnoreabbrev Ack Ack!
cnoreabbrev ack Ack!
set pastetoggle=<F2> " toggle paste mode by pressing F2

" no need to press shift in normal mode for :
nnoremap ; :

" no need to press C-w to change windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Ctrl P
let g:ctrlp_map = '<c-p>'
