"
" Script : .vimrc
" Name : Jean-Sebastien Beaulieu
" Date : 2016/02/03
" Description : vim (text editor) configuration
"

""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Raimondi/delimitMate'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""
" NerdTree
""""""""""""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd BufEnter * silent! :lcd%:p:h
au VimEnter * NERDTree

""""""""""""""""""""""""""""""""""""""""
" Splits
""""""""""""""""""""""""""""""""""""""""
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''
let g:airline_theme='base16_eighties'

""""""""""""""""""""""""""""""""""""""""
" Colors and fonts
""""""""""""""""""""""""""""""""""""""""
set t_Co=8
let python_highlight_all=1
syntax on
set encoding=utf8
set ffs=unix,dos,mac
set background=dark
colorscheme base16-eighties

""""""""""""""""""""""""""""""""""""""""
" Text editor settings
""""""""""""""""""""""""""""""""""""""""
" Tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Indent
set ai
set si
set wrap

" Visual aids
set number
set showcmd
set cursorline cursorcolumn
set showmatch
set wildmenu

" Fix for terminal use
set lazyredraw
set ttyfast
set mouse=a

""""""""""""""""""""""""""""""""""""""""
" Search 
""""""""""""""""""""""""""""""""""""""""
set incsearch
set hlsearch

""""""""""""""""""""""""""""""""""""""""
" Autocomplete
""""""""""""""""""""""""""""""""""""""""
set completeopt=longest,menuone
let g:pymode_python = 'python3'
