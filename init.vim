" Place this file at $HOME/.config/nvim/init.vim
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
syntax on
set number
set relativenumber
set showmatch
set encoding=utf-8
set fileencoding=utf-8
set clipboard=unnamedplus,unnamed " Use system wide clipboard by default

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'rking/ag.vim'
Plug 'Yggdroot/indentLine'
Plug 'w0rp/ale'
call plug#end()

let g:indentLine_setColors = 5
let g:indentLine_char_list = ['|']
