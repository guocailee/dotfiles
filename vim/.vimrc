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


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdTree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

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

noremap <F3> :Autoformat<CR>
map <C-n> :NERDTreeToggle<CR>
