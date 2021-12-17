if (has("termguicolors"))
  set termguicolors
endif

call plug#begin('~/.config/nvim/init.vim')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'

"------------Colors-------------------
Plug 'szorfein/fromthehell.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'folke/tokyonight.nvim', {'branch':'main'}
call plug#end()

colorscheme gruvbox
set nu rnu
set clipboard+=unnamedplus
set autoindent smartindent

nnoremap <space> za
nnoremap <F12> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nmap     <F8> :TagbarToggle<CR>
nmap     <F6> :IndentGuidesToggle<CR>
map      <C-n> :NERDTreeToggle<CR>

au BufNewFile,BufRead *.py
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4

au BufNewFile,BufRead *.ino,*.cpp,*.h
	set tabstop=2
	set softtabstop=2
	set shiftwidth=2
  set autoindent

autocmd BufEnter *.ino colorscheme tokyonight
