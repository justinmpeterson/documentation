set nocompatible              " required
filetype off                  " required
filetype plugin indent on    " required

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=79 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix

set backspace=indent,eol,start

set encoding=utf-8
set hlsearch        " highlight matches
set nu              " display line numbers
set ruler
set showmatch       " highlight matching [{()}]

syntax on

set foldmethod=indent
set foldlevel=99

" let g:vimwiki_list = [{'path': '/Users/jpeterson/OneDrive\ -\ STATS\ LLC/Documents/vimwiki/wiki', 'path_html': '/Users/jpeterson/OneDrive\ -\ STATS\ LLC/Documents/vimwiki/html'}]
let g:vimwiki_list = [{'path': '/Users/justin/Documents/vimwiki/wiki', 'path_html': '/Users/justin/Documents/vimwiki/html'}]
