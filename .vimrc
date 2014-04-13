set cursorline
syntax on
set background=dark
"colorscheme lucius
colorscheme vividchalk

set nocompatible
set incsearch
set nu
set hlsearch
set ic
set textwidth=1000
filetype plugin indent on
set autochdir

set softtabstop=4
set shiftwidth=4
set expandtab
set tabstop=4
set autoindent
set cindent

execute pathogen#infect()
filetype plugin indent on

map <C-h> :NERDTreeToggle<CR>
map <C-b> \be

set encoding=utf-8
set termencoding=utf-8

map mc I//<Esc>
map ms I/*<Esc>A*/<Esc>
