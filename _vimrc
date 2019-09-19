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
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'

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
  "colorscheme gruvbox
  autocmd BufEnter * colorscheme gruvbox
  autocmd BufEnter *.md colorscheme forest-night
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
nnoremap <space> za
nnoremap <F12> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nmap <F8> :TagbarToggle<CR>
nmap <F6> :IndentGuidesToggle<CR>
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
"                         -------

