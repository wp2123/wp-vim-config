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
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ruby.vim'
Plugin 'JSON.vim'
Plugin 'git@github.com:marijnh/tern_for_vim.git'
Plugin 'git@github.com:spf13/vim-autoclose.git'
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

let mapleader=","

set regexpengine=1
syntax enable

" solarized colorscheme config
set background=dark
colorscheme solarized

" YCM config
let g:ycm_min_num_of_chars_for_completion=1 

" skip macvim scheme
let macvim_skip_colorscheme=1


autocmd InsertLeave * se nocul 
autocmd InsertEnter * se cul " 用浅色高亮当前行

set smartindent " 智能对齐

set autoindent " 自动对齐

set confirm " 在处理未保存或只读文件的时候，弹出确认

set tabstop=2 " Tab键的宽度

set softtabstop=4
set shiftwidth=4 "  统一缩进为4

set number " 显示行号

set hlsearch
set incsearch " 搜索逐字符高亮

set gdefault " 行内替换

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1 " 编码设置

set showmatch " 高亮显示对应的括号

set matchtime=5 " 对应括号高亮的时间（单位是十分之一秒）
 
" H = Home, L = End
noremap H ^
noremap L $
vnoremap L g_


"------  Window Navigation  ------
" ,hljk = Move between windows
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k


"------  Buffer Navigation  ------
" Ctrl Left/h & Right/l cycle between buffers
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-l> :bnext<CR>

" ,q Closes the current buffer
nnoremap <silent> <Leader>q :bd<CR>

" ,Q Closes the current window
nnoremap <silent> <Leader>Q <C-w>c


"------  Searching  ------
set incsearch
set ignorecase
set smartcase
set hlsearch


" Clear search highlights when pressing ,b
nnoremap <silent> <leader>b :nohlsearch<CR>

" ------- fugitive --------
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gr :Gremove<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gp :Ggrep
nnoremap <Leader>gR :Gread<CR>
nnoremap <Leader>gg :Git
nnoremap <Leader>gd :Gdiff<CR>

" -------- airline ---------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" -------- syntastic ----------
let g:syntastic_check_on_open = 1

" -------- nerdtree -----------
map <C-e> :NERDTreeToggle<CR>

" -------- emmet ---------
let g:user_emmet_mode='a'

" -------- vim-javascript --------
"  Enables HTML/CSS syntax highlighting in your JavaScript file.

let javascript_enable_domhtmlcss=1

" -------- jsctags -------
let g:tagbar_type_javascript = {
    \ 'ctagsbin' : '/usr/local/lib/node_modules/jsctags/bin/jsctags'
\ }

" ------- tagbar --------
nmap <Leader>tt :TagbarToggle<CR>

" ------- nerdcommenter ------
nmap <D-/> <Leader>cc
nmap // <Leader>cu

" ------- tabular --------
nmap <Leader>f :Tab/
