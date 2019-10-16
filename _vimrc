set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'vimwiki/vimwiki'

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

"Graphical settings      -------
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"let g:solarized_diffmode="high"
"colorscheme solarized
set background=dark
set guifont=Consolas:h13
colorscheme gruvbox
call togglebg#map("<F5>")
"                         -------

"General Settings for VIM -------
syntax enable

set nu rnu
set hlsearch
set foldmethod=indent
set expandtab
set textwidth=79

nnoremap <space> za
nnoremap <F12> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nmap     <F8> :TagbarToggle<CR>
nmap     <F6> :IndentGuidesToggle<CR>
map      <C-n> :NERDTreeToggle<CR>
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

autocmd BufEnter *.md set noet
autocmd BufEnter *.md colorscheme forest-night
autocmd BufEnter *.md set spell
"                         -------

