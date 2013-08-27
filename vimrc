set nocompatible
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on

set laststatus=2
set t_Co=256
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '␊ '
let g:airline_linecolumn_prefix = '␤ '
let g:airline_linecolumn_prefix = '¶ '
let g:airline#extensions#branch#symbol = '⎇ '
let g:airline#extensions#paste#symbol = 'ρ'
let g:airline#extensions#paste#symbol = 'Þ'
let g:airline#extensions#paste#symbol = '∥'
let g:airline#extensions#whitespace#symbol = 'Ξ'

set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set magic

set number
set relativenumber

" Special modes for certain types of files
autocmd FileType make setlocal noexpandtab
autocmd Filetype go setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd Filetype html setlocal softtabstop=2 shiftwidth=2
au BufRead,BufNewFile *.md setlocal filetype=markdown

" Save as root
cmap w!! %!sudo tee > /dev/null %

colorscheme ron

syntax on
