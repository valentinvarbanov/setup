set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
"Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

set clipboard+=unnamed
set number
set expandtab " convert tab to spaces
set tabstop=4 shiftwidth=4 softtabstop=4
set encoding=utf-8
set smarttab
set mat=5  " Bracket blinking.
set showmatch  " Show matching brackets.
syntax on
set nowrap
set laststatus=2 "to show colored status in single view
set noshowmode " hide default mode line
set backspace=indent,eol,start

"map <C-n> :NERDTreeToggle<CR>

map <silent> <C-n> :NERDTreeFocus<CR>
map <silent> <C-m> :NERDTreeClose<CR>

"let g:solarized_termcolors=256
"set background=dark
"let g:onedark_terminal_italics=1
colorscheme onedark
