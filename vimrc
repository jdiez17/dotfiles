set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'bling/vim-airline'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'majutsushi/tagbar'
Bundle 'bitc/vim-hdevtools'
Bundle 'jpalardy/vim-slime'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/vimproc.vim'
Bundle 'eagletmt/ghcmod-vim'

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

filetype plugin indent on

set encoding=utf-8
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1

let g:vim_markdown_folding_disabled=1

set shortmess=a
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
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>

" Clear trailing spaces
cmap ts %s/\s\+$//e
autocmd BufWritePre *.py %s/\s\+$//e

" Save as root
cmap w!! %!sudo tee > /dev/null %

" Leader commands
map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <Leader>t :TagbarToggle<CR>

map <Leader>y :HdevtoolsType<CR>

" SLIME config
let g:slime_target = "tmux"

colorscheme ron

syntax on
