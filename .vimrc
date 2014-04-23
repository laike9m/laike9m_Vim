set nocompatible              " be iMproved
filetype off                  " required!
set nu
syntax on                     " 开启语法高亮
au GUIEnter * simalt ~x       " Windows 最大化窗口
set lines=999 columns=999     " Linux 最大化窗口,两个中根据当前系统注释掉另一个

set backspace=indent,eol,start " 保证退格键可以正常工作

" basic configuration
:set shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2
:set modifiable
:colorscheme desert

" Linux
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Windows
" set rtp+=~/vimfiles/bundle/vundle/
" let path='~/vimfiles/bundle'
" call vundle#rc(path)

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1                 " 显示书签
let NERDTreeIgnore=['\.\.$', '\.$', '\~$']  " 不显示.和..路径

" My bundles here:
" original repos on GitHub
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

" non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!

" set font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
