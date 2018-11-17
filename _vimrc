set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

"
"Code checking plugins    -------
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
"                         -------

"Coloschemes for VIM      -------
Plugin 'altercation/vim-colors-solarized'
Plugin 'szorfein/fromthehell.vim'
Plugin 'itchyny/lightline.vim'
"                         -------

call vundle#end()
filetype plugin indent on

"Settings for Solarized   -------
if has('gui-running')
  let g:solarized_contrast="high"
  let g:solarized_visibility="high"
  let g:solarized_diffmode="high"
  set background=dark
  colorscheme solarized
else
  colorscheme fromthehell
endif
"                         -------
"General Settings for VIM -------
syntax enable
set nu
set encoding=utf-8
set foldmethod=indent
set expandtab
set textwidth=79
set laststatus=2
set guifont=consolas:h11
nnoremap <space> za
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
"                         -------

"File Specific settings   -------
au BufNewFile,BufRead *.py
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4

au BufNewFile,BufRead *.ino,*.cpp,*.h
	set tabstop=2 
	set softtabstop=2 
	set shiftwidth=2
"                         -------
	
