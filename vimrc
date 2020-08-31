set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'andrewstuart/vim-kubernetes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


"-------------------------------ultisnips begin---------------------------"
"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"-------------------------------ultisnips end---------------------------"

call vundle#end()            " required
filetype plugin indent on    " required
"-------------------------------airline begin---------------------------"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"jsformatter unique_tail
let g:airline#extensions#tabline#formatter = 'unique_tail'

"-------------------------------airline end---------------------------"



"-----------------------------自定义常用配置 -begin-----------------------"
"语法高亮
"打开语法高亮
syntax on

"使用配色方案
colorscheme desert
"取消自动备份及产生swp文件
set nobackup
set nowb
"高亮光标所在行
set cursorline
set noswapfile
"允许区域选择
set selection=exclusive
set selectmode=mouse,key
"制表符为4
set tabstop=4
"统一缩进为4
set softtabstop=4
set shiftwidth=4
"设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
"设置删除可以用
set backspace=2

"-----------------------------自定义常用配置 -end-----------------------"
