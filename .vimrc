" vundle config
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'fugitive.vim'
Plugin 'bling/vim-airline'
Plugin 'Syntastic'
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'ctrlp.vim'
Plugin 'git@github.com:terryma/vim-multiple-cursors.git'
Plugin 'rails.vim'
Plugin 'git@github.com:airblade/vim-gitgutter.git'
Plugin 'surround.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Tagbar'
Plugin 'git@github.com:scrooloose/nerdcommenter.git'
Plugin 'mileszs/ack.vim'
Plugin 'Tabular'
Plugin 'Haml'
Plugin 'gitv'
Plugin 'git@github.com:skammer/vim-css-color.git'
Plugin 'Handlebars'
Plugin 'javascript.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ruby.vim'
Plugin 'JSON.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

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


" solarized colorscheme config
set background=dark
colorscheme solarized

" YCM config
let g:ycm_min_num_of_chars_for_completion = 1 
