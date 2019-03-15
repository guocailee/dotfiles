set nocompatible              " be iMproved, required
set encoding=utf-8 "编码为utf8

set number   "显示行号
set nowrap   "不换行
set shiftwidth=2  "默认缩进4个空格
set softtabstop=2  "使用tab时 tab空格数
set tabstop=2  "tab代表4个空格
set laststatus=2  "总是显示状态行
"backspace键
" indent 删除自动缩进的值
" " eol 删除上一行行末尾的回车，两行合并
" " start 除了刚输入的，还删除原来的字符
set backspace=indent,eol,start
set expandtab "使用空格替换tab
set autoindent " 自动缩进

syn on  "语法高亮
filetype on "文件类型

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'


" Multiple Plug commands can be written in a single line using | separators
Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Typescript
Plug 'leafgarland/typescript-vim'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'



" Initialize plugin system
call plug#end()


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

noremap <F3> :Autoformat<CR>
map <C-n> :NERDTreeToggle<CR>
