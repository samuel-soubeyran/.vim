set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" https://github.com/VundleVim/Vundle.vim
" installation: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
colorscheme zenburn

map <C-n> :NERDTreeToggle<CR> " open NERDTree with Ctrl+n
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set nu "line numbering

let python_highlight_all=1

inoremap jk <ESC>
syntax enable 
set background=dark

let mapleader = "\<Space>"
" Sets how many lines of history VIM has to remember
set history=700
" Enable filetype plugins
filetype plugin on
filetype indent on

set encoding=utf-8
set autoread

"Always show current position
set ruler
"" Height of the command bar
set cmdheight=2

" Makes search act like search in modern browsers
set incsearch 
" Don't redraw while executing macros (good performance config)
set lazyredraw 
" For regular expressions turn magic on
set magic


" A buffer becomes hidden when it is abandoned
" set hid
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>
