set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

call vundle#end()
filetype plugin indent on


let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_diffmode="high"
set background=dark
colorscheme solarized
syntax enable
set nu
set foldmethod=indent
set expandtab
set textwidth=79
nnoremap <space> za
map <C-n> :NERDTreeToggle<CR>

au BufNewFile,BufRead *.py
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4

au BufNewFile,BufRead *.ino, *.cpp, *.h
	set tabstop=2 
	set softtabstop=2 
	set shiftwidth=2

	
