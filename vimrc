filetype plugin indent on

set nomodeline
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ---- The rest of your config follows here

" ---- General -----

syntax on
filetype plugin on
autocmd Filetype python setlocal expandtab shiftwidth=4 softtabstop=4
colorscheme elflord
set nu
set hlsearch
set autoindent 
set ruler
set smartindent
set history=150
set mouse=a
set t_Co=256
set smarttab
set tabstop=4
set colorcolumn=88
set pastetoggle=<f5>
set wildmenu
set scrolloff=999
set smartcase
set magic
set wildmenu
set guioptions=T
set paste
filetype plugin indent on
" automatically change window's cwd to file's dir
set autochdir


" -------------------------- Powerline setup:
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 14
set laststatus=2

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

Plugin 'davidhalter/jedi-vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'nvie/vim-flake8'
Plugin 'vim-syntastic/syntastic'
Bundle 'Valloric/YouCompleteMe'

let python_highlight_all=1
syntax on


