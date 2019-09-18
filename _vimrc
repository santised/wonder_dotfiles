set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'

"Coloschemes for VIM     -------
Plugin 'altercation/vim-colors-solarized'
Plugin 'szorfein/fromthehell.vim'
Plugin 'morhetz/gruvbox'
Plugin 'sainnhe/vim-color-forest-night'
Plugin 'sainnhe/vim-color-desert-night'
Plugin 'dracula/vim'
"                         -------

call vundle#end()
filetype plugin indent on

"Settings for Solarized   -------
if has('gui_running')
  "let g:solarized_contrast="high"
  "let g:solarized_visibility="high"
  "let g:solarized_diffmode="high"
  set background=dark
  set guifont=Consolas:h11
  colorscheme gruvbox
  "colorscheme solarized
  call togglebg#map("<F5>")
else
  colorscheme fromthehell
endif
"                         -------
"General Settings for VIM -------
syntax enable
set nu
set hlsearch
set foldmethod=indent
set expandtab
set textwidth=79
set laststatus=2 " Starts lightline
nnoremap <space> za 
map <C-n> :NERDTreeToggle<CR>
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
  set autoindent

au BufNewFile,BufRead *.md
	set tabstop=2 
	set softtabstop=2 
	set shiftwidth=2
  set autoindent
  colorscheme forest-night
"                         -------
	
