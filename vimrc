set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'majutsushi/tagbar'
Bundle 'Valloric/YouCompleteMe'

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

let g:vim_markdown_folding_disabled=1

set encoding=utf-8
set ts=4 sts=4 sw=4 expandtab
set autoindent
set smartindent
set magic

" Leader = ,
let mapleader = ","

" Copy to clipboard
set clipboard=unnamed

set number
set relativenumber

" Special modes for certain types of files
autocmd FileType make setlocal noexpandtab
autocmd Filetype go setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
au BufRead,BufNewFile *.md setlocal filetype=markdown

" Clear trailing spaces
cmap ts %s/\s\+$//e
autocmd BufWritePre *.py %s/\s\+$//e

" Save as root
cmap w!! %!sudo tee > /dev/null %

" Leader commands
map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <Leader>t :TagbarToggle<CR>
map <Leader>d :YcmDiags<CR>

" YCM
let g:ycm_confirm_extra_conf = 0

colorscheme ron

syntax on
