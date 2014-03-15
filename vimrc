set nocompatible
set ruler
set hlsearch

let g:ex_toolkit_path='~/.toolkit/'

set nu
set ts=4
set ai
set si
set sw=4
set incsearch
"set tags=/root/opensource/nginx-1.0.14_comment/tags;
"set tags=~/pproj/tb-common-utils/tags;
"set tags=~/lua/lua-5.2.3/src/tags;
"set tags=~/muduo/muduo/tags
"set tags=~/chaos/tags
set tags=~/folly/folly/tags

set autochdir

set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936

colorscheme darkblue

let Tlist_Exit_OnlyWindow=1
let	Tlist_Show_One_File=1
map <F3> :Tlist<CR>

set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype  in popup window
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_DefaultNamespaces=["std"]

let g:neocomplcache_enable_at_startup=1 

call pathogen#infect()
syntax on
set showcmd
set tabstop=4
filetype plugin indent on

nmap <F3> :TagbarToggle<CR>
let g:tagbar_left=1
let g:tagbar_width = 40       "设置宽度，默认为40
"autocmd VimEnter * nested :call tagbar#autoopen(1)    "打开vim时自动打开tagbar

filetype plugin indent on

map <F2> :NERDTree<CR>
map <F5> :UpdateTypesFile<CR>
map <F4> :q<CR>
map <C-d> :cw<CR>
map <C-k> :A<CR>


"=======================================================
set tags+=./tags
au BufNewFile,BufRead *.cpp set syntax=cpp11


"----Vundle Start--------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/LisToggle'
Bundle 'scrooloose/syntastic'

filetype plugin indent on

"-------Vundle End-----


