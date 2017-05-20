execute pathogen#infect()

"配色
:colorscheme desert 

" 高亮當前列 (垂直)。
set cursorcolumn

" 高亮當前行 (水平)。
"set cursorline

" 文字編碼加入 utf8。
set enc=utf8

" 自動縮排：啟用自動縮排以後，在貼上剪貼簿的資料時排版可能會亂掉，這時可以手動切換至貼上模式
" :set paste 再進行貼上。
set ai

" 啟用暗色背景模式。
set background=dark

"設定tab為4格空白	
set tabstop=4

"顯示行號
set nu

"自動存檔
set autowrite

"開關NERDTree,這裡使用F5
map <F5> :NERDTreeToggle<cr>
"nnoremap <silent> <F5> :NERDTree<CR>
"map  :silent! NERDTreeToggle


" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif


" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"樹狀目錄件
NeoBundle 'scrooloose/nerdtree'
"自動補齊插件
NeoBundle 'vim-scripts/AutoComplPop'

"NeoBundle 'garbas/vim-snipmate'


"==
"大綱式導航 START
"=
NeoBundle 'majutsushi/tagbar'
map <F9> :TagbarToggle<CR>
" 啟動時自動focus
let g:tagbar_autofocus = 1

 " for ruby​​, delete if you do not need
let g:tagbar_type_ruby = {
    \ 'kinds' : [
     \ 'm:modules',
     \ 'c:classes',
     \ 'd:describes',
     \ 'C:contexts',
     \ 'f:methods',
     \ 'F:singleton methods'
    \ ]
    \ }
"==
"大綱式導航 END
"==
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()



" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck




