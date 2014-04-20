set nocompatible              " be iMproved
filetype off                  " required!
set nu
syntax on                     " 开启语法高亮
au GUIEnter * simalt ~x       " 最大化窗口

" basic configuration
:set shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2
:set modifiable
:colorscheme desert

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Windows settings:
" set rtp+=~/vimfiles/bundle/vundle/
" let path='~/vimfiles/bundle'
" call vundle#rc(path)

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
let NERDTreeShowHidden=1  " 可显示以~开头的文件
let NERDTreeShowBookmarks=1  
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
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

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
