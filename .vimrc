set ts=4       "tab等同于4个空格
set expandtab       "tab转成空格
set shiftwidth=4    "自动缩进所用空白长度
set nocompatible     
set fdm=syntax      "设置折叠
let &termencoding=&encoding   "终端设置编码
set fileencodings=utf-8,gbk,ucs-bom,cp936   "终端设置编码
colorscheme delek    "设置VIM代码相关配色
set autoindent       "当空格时会与上一级保持同等缩进
set ruler            "最后一行显示状态页数等
set nu               "每一行前面加行号
syntax on            "进行语法检查、颜色显示
filetype plugin on                                             
autocmd FileType php set omnifunc=phpcomplete#CompletePHP "激活PHP自动补全可以用ctrl+x 再ctrl+o来做补全

"下载php-doc.vim文件http://www.vim.org/scripts/script.php?script_id=1355
"之后放在/usr/share/vim/vim74/autoload/php-doc.vim地方，然后用ctr+p使用
source /usr/share/vim/vim74/autoload/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 
"安装NERDTree 用于开启目录,地址http://www.vim.org/scripts/script.php?script_id=1658，解压后把plugin、doc、syntax、nerdtree_plugin放在/usr/share/vim/vim73/目录下面
