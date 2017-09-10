execute pathogen#infect()
set number
filetype plugin indent on
set nocompatible
set t_Co=256
set encoding=utf-8
set tabstop=2		  " show existing tab with x spaces width
set shiftwidth=2          " When indenting, use x spaces width
set expandtab		  " On pressing tab, insert spaces
syntax enable
let g:jsx_ext_required = 0
set background=dark
colorscheme zenburn
let g:airline_theme='zenburn'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set hidden
set smartcase
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre * :normal migg=G`i
