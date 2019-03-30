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

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

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


"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'jnurmine/Zenburn'

syntax enable
let g:solarized_termcolors=256
"set background=dark
colorscheme solarized



"call togglebg#map("<F5>")




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
