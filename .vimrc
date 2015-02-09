set nocompatible              " be iMproved
filetype off                  " required!
set nu
syntax on                     " 开启语法高亮
set fileencodings=utf-8,gbk   " 解决中文编码问题
set backspace=indent,eol,start " 保证退格键可以正常工作
set noswapfile                " 不产生swp文件
set autoread                  " 文件变化时可以实时刷新
set hlsearch				  " 高亮搜索文本
set omnifunc=syntaxcomplete#Complete " omni-complete

:set shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
:set modifiable
:colorscheme desert

filetype plugin indent on     " required!

set rtp+=~/.vim/bundle/vundle/ " Vundle setting
call vundle#begin()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My bundles here:
Bundle 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1                 " 显示书签
let NERDTreeIgnore=['\.\.$', '\.$', '\~$']  " 不显示.和..路径
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'klen/python-mode'
Plugin 'panozzaj/vim-autocorrect'

call vundle#end()
" auto correction
iabbrev uplaoder uploader 
iabbrev Uplaoder Uploader 

" set font
if has("gui_running")
  	if has("gui_gtk2")
		set lines=999 columns=999     " Linux 最大化窗口
    	set guifont=Inconsolata\ 12
  	elseif has("gui_macvim")
    	set guifont=Menlo\ Regular:h14
  	elseif has("gui_win32")
		set rtp+=~/vimfiles/bundle/vundle/ " Vundle setting
		let path='~/vimfiles/bundle'
		call vundle#rc(path)
		au GUIEnter * simalt ~x       " Windows 最大化窗口
        set guifont=Consolas:h11:cANSI
    endif
endif
