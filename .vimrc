set nocompatible
filetype off

set t_Co=256

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


Plugin 'gmarik/vundle'
Plugin 'noahfrederick/vim-skeleton'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tmhedberg/matchit'
Plugin 'mattn/emmet-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ciaranm/detectindent'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'davidhalter/jedi-vim'
Plugin 'shougo/neocomplete.vim'
Plugin 'vim-scripts/ZoomWin'

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
" Nerdtree ignores
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let NERDTreeIgnore = ['\.pyc$']

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

" Template insertion
nnoremap <leader>t :SkelInsert!<cr>


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
set pastetoggle=<F2>
nnoremap ; :
cnoreabbrev ag Ag!
cnoreabbrev Ag Ag!

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <leader>zz %:sleep 1000m<CR>%

" YouCompleteMe
nnoremap <leader>gd :YcmCompleter GoTo<cr>
let g:ycm_filepath_completion_use_working_dir = 1
" disable python
let g:ycm_filetype_blacklist = {
      \ 'python' : 1,
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

" Jedi-vim
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = 2

" Neocomplete

autocmd FileType python setlocal omnifunc=jedi#completions
let g:neocomplete#enable_at_startup = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'


" Ctrl P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set wildignore=vendor "ignoring all the gems bundled

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


" Go mappings

au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" Vim-Airline

let g:airline_left_sep='|'
let g:airline_right_sep='|'
let g:airline#extensions#branch#empty_message = 'no-git'
let g:airline_theme='dark'

" Theme
set background=dark
colorscheme grb256

" Markdown, not Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufWritePost *.md :silent !markdown -o <afile>:p:h/<afile>:t:r.html <afile>:p

" Remove trailing whitespace from certain files
autocmd FileType c,cpp,java,php,python autocmd BufWritePre <buffer> :%s/\s\+$//e

" Show different background after 80 columns
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
