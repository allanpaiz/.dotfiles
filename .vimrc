let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
call plug#end()



filetype on
filetype plugin on
filetype indent on
syntax on
set ruler
set autoindent
set number
set relativenumber
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set scrolloff=15
set ignorecase

set background=dark
colorscheme gruvbox

let mapleader = " "
nnoremap <Leader>w :w<CR>

nnoremap <C-n> :NERDTreeToggle<CR>
