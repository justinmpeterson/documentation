set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

au BufRead,BufNewFile *.py set expandtab

set expandtab
set tabstop=3
set softtabstop=3
set shiftwidth=3
set autoindent

set backspace=indent,eol,start

set nu
set ruler

syntax on

set foldmethod=indent
set foldlevel=99
