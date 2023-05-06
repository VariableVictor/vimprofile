vim9script

if (has("win32") || has("win95") || has("win64") || has("win16")) #判定当前操作系统类型
	g:iswindows = 1
else
	g:iswindows = 0
endif

set nocompatible #不要vim模仿vi模式，建议设置，否则会有很多不兼容的问题
#filetype off #下方filetype plugin indent on已经设置，无需重复

#g:ycm_key_list_stop_completion = ['<C-y>']
if (g:iswindows == 1)
    plug#begin('$VIM/plug')
    source $VIM/vimplug.vim
else
    plug#begin('~/.vim/plug')
    source ~/.vim/vimplug.vim
endif
plug#end()

#LeaderF
noremap <F2> :LeaderfFunction!<cr>
#you complete me
g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
g:ycm_key_list_select_completion = ['<Down>']



#apc
#g:apc_enable_ft = {'text': 1, 'markdown': 1, 'php': 1}
#g:apc_enable_tab = 0

set cpt=.,k,w,b
set completeopt=menu,menuone,noselect

#snipmate
g:snipMate = { 'snippet_version': 1 }

set shortmess+=c
set nu
set ruler #显示行列和百分比
syntax on #打开高亮
$LANG = 'zh_CN.UTF-8'
if (g:iswindows == 1)
    set pythonthreehome=D:\Soft\anaconda3\envs\Victor
    set pythonthreedll=D:\Soft\anaconda3\envs\Victor\python310.dll
endif



set tabstop=2 #让一个tab等于4个空格
set shiftwidth=2 #让一个缩进等于2个空格
set expandtab
set vb t_vb=
set nowrap #不自动换行
set hlsearch #高亮显示结果
set incsearch #在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,] #允许退格键的使用

set encoding=utf-8
set fenc=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set guifont=Cascadia_Mono:h10 #记住空格用下划线代替哦
set gfw=Cascadia_Mono:h12
set ff=unix

if (g:iswindows == 1)
    source $VIM/vimrc.legacy
endif

if (g:iswindows == 1)
    set langmenu=zh_CN
    set termencoding=chinese
    source $VIMRUNTIME/delmenu.vim
    language messages zh_CN.utf-8
    source $VIMRUNTIME/menu.vim
else
    set langmenu=zh_CN
    set termencoding=utf-8
    language zh_CN.UTF-8
    language messages zh_CN.utf-8
endif

if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
	set ambiwidth=double
endif

colorscheme desert
set nobomb
runtime ftplugin/man.vim
