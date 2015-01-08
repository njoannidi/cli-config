" Mouse support
set ttyfast
set mouse=a
set ttymouse=xterm

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

set smarttab
set expandtab

" Line numbers
set number

" Whitespace
set list listchars=tab:»·,trail:·
set list

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

"Aeroline
set laststatus=2

" Theme
set background=dark
syntax enable
colorscheme Monokai

" Nerd Tree
map <C-n> :NERDTreeToggle<CR>

" Powerline
let g:airline_powerline_fonts = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Custom plugins here

Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'moll/vim-node'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
