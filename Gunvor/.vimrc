" No, not try to emulate vi
set nocompatible 

" Highlight cursor line
set cursorline

" Enable line numbers
set number

" Set relative line numbers
set relativenumber

" New lines inherit the indentation of previous lines
set autoindent

" Convert tabs to spaces
set expandtab

" When shifting, indent using 2 spaces
set shiftwidth=2

" Indent using 2 spaces
set tabstop=2

" Insert 2 spaces when the *tab* key is pressed
set smarttab

" Use an encoding that supports unicode
set encoding=utf-8

" Enable syntax highlighting, and turn on
syntax enable
syntax on

" Disable beep on errors
set noerrorbells

" Set the window title, reflecting the file currently being edited
set title

" Use colors that suit a dark background
set background=dark

" Ignore files matcing these patterns when opening files based on a global pattern
set wildignore+=.pyc,.swp
filetype off
