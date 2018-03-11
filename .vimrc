set nocompatible
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
filetype on
set rtp+=~/.vim/bundle/Vundle.vim
set number
syntax on
set tabstop=3
set autoindent
"colorscheme desert.
autocmd vimenter * NERDTree
 "Start NERDTree when no file specified.

autocmd StdinReadPre * let s:std_in=1
autocmd Vimenter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Start NERDTree when opening a directory.
autocmd StdinReadPre * let s:std_in=1
autocmd Vimenter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0]

"Start NERDTree with ctrl+n.
map <C-n> :NERDTreeToggle<CR>

call vundle#begin()

"Let Vundle manage itself.
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'mrtazz/simplenote.vim'

" Color schemes.
Plugin 'flazz/vim-colorschemes'


call vundle#end()
filetype plugin indent on

