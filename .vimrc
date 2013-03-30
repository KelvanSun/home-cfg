set nocompatible "关闭兼容模式
set number "显示行号
set tabstop=4 "设定TAB长度为4
colorscheme desert "主题设置  
syntax on  "自动语法高亮
filetype on "检测文件类型插件

if !exists('g:VimrcIsLoad')
	"set guioptions-=m " 隐藏菜单栏
	set guioptions-=T " 隐藏工具栏
	set guioptions-=L " 隐藏左侧滚动条
	set guioptions-=r " 隐藏右侧滚动条
	set guioptions-=b " 隐藏底部滚动条
	set showtabline=0 " Tab栏
	set guifont="Monospace 10"
endif
