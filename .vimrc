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
