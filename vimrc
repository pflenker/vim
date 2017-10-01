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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_loc_list_height =3
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
" execute eslint with --fix flag
" let g:syntastic_javascript_eslint_args = ['--fix']
" enable autoread to reload any files from files when checktime is called and
" the file is changed
" set autoread
" add an autocmd after vim started to execute checktime for *.js files on write
" au VimEnter *.js au BufWritePost *.js checktime
" au VimEnter *.jsx au BufWritePost *.jsx checktime
