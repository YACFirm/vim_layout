set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'otommod/ZoomWin'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'


filetype plugin indent on

set mouse=nv
set nowrap
set nocompatible
set ls=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmode
set incsearch
set ruler
set number
set ignorecase
set smartcase
set ttyfast
set so=7 " Set 7 lines to the cursor when moving vertical
set ss=1
set siso=10
set listchars+=precedes:<,extends:>
set backspace=eol,start,indent

set expandtab
set sm
map <F3> :NERDTreeToggle<CR>
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

map <leader><space> :noh<cr>
map <leader>x :ccl<cr>
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

set clipboard=unnamedplus
cnoreabbrev Ack Ack!
cnoreabbrev ack Ack!
set pastetoggle=<F2>
nnoremap ; :

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Ctrl P
let g:ctrlp_map = '<c-p>'

set wildignore=vendor "ignoring all the gems bundled

" ag instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'
