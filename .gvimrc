set nocompatible   
set number 
set tabstop=4
colorscheme desert   
syntax on  
filetype on 

if !exists('g:VimrcIsLoad')
	"set guioptions-=m 
	set guioptions-=T 
	set guioptions-=L 
	set guioptions-=r 
	set guioptions-=b 
	set showtabline=0 
	set guifont=DejaVu\ Sans\ Mono\ 10
	set guifontwide=WenQuanYi\ Micro\ Hei\ 10
endif

set fileencodings=utf-8
set nowrap "不自动换行
set incsearch "在输入要搜索的文字时，实时匹配
set autoindent
set nohlsearch
