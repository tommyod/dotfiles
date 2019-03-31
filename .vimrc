" Enable line numbers
set number

" New lines inherit the indentation of previous lines
set autoindent

" Convert tabs to spaces
set expandtab

" When shifting, indent using 2 spaces
set shiftwidth=2

" Indent using 2 spaces
set tabstop=2

" Insert *tabstop* number of spaces when the *tab* key is pressed
set smarttab

" Incremental search that shows partial matches
set incsearch

" Use an encoding that supports unicode
set encoding=utf-8

" Enable syntax highlighting
syntax enable

" Disable beep on errors
set noerrorbells

" Set the window title, reflecting the file currently being edited
set title

" Use colors that suit a dark background
set background=dark

" Show a confirmation dialog when closing an unsaved file
set confirm

" Ignore filws matching these patterns when opening files based on a glob pattern
set wildignore+=.pyc,.swp
filetype off                  " required

" Spell checking
map <F6> :setlocal spell! spelllang=en_us<CR>

" Relative line numbers
set number                     " Show current line number
set relativenumber             " Show relative line numbers

" Basic setup
set encoding=utf-8
set number
set splitbelow
set splitright

"enable folding
set foldmethod=indent
set foldlevel=99
"enable folding with spacebar
nnoremap <space> za

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set nocompatible              " required

"let python_highlight_all=1
syntax on

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8' "PEP8 check
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'lervag/vimtex'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" For moving lines up and down with ALT + j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" >>>>>>>>>> TOMMYs CONFIGURATION >>>>>>>>>>>>>>>>>>

set encoding=utf-8

syntax on


" Enable folding with the spacebar
nnoremap <space> za

" Enable folding
set foldmethod=indent
set foldlevel=1


" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" turn hybrid line numbers on
set number relativenumber
set nu rnu

set laststatus=2

nnoremap <buffer> <F5> <Esc>:w <cr> :exec '!python' shellescape(@%, 1)<cr>

" >>>>>>>>>>>>>>>>>>>>>> START VUNDLE SCRIPT >>>>>>>>>>>>>>>>>>>>>>>>>>>
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold' 
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'


" SimpylFold settings
let g:SimpylFold_docstring_preview = 1



" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" <<<<<<<<<<<<<<<<<<<<<<< END VUNDLE SCRIPT <<<<<<<<<<<<<<<<<<<<<<
