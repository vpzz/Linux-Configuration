syntax on " 自动语法高亮
set wrap " 自动换行
set nocompatible " 关闭 vi 兼容模式
set showcmd " 右下角显示命令
set number " 显示行号
set cursorline " 突出显示当前行
set mouse=a "允许使用鼠标
set encoding=utf-8 "设置编码
let &t_ut='' "当配色出问题时，设置该选项
set wildmenu " 命令自动补全
set tabstop=4 " 设定 tab 长度为 4
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set laststatus=2
set autochdir
set scrolloff=8
set nolist "不显示行尾字符
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
exec "nohlsearch"
"set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
"set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
"set foldenable " 开始折叠
"set foldmethod=syntax " 设置语法折叠
"set foldcolumn=0 " 设置折叠区域的宽度
"setlocal foldlevel=1 " 设置折叠层数为
" set foldclose=all " 设置为自动关闭折叠
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>     " 用空格键来开关折叠
set clipboard=unnamedplus "和系统共享剪贴板
"vnoremap Y "+y "复制到系统的剪贴板

"设置空格键为LEADER键
let mapleader=" "

"键盘定位调整
noremap i k
noremap k j
noremap j h
noremap l l

"插入文字的i键替换为h
noremap h i
noremap H I

"快速移动
noremap I 8k
noremap K 8j

"行首行尾
noremap J 0
noremap L $

"跳转到下一个搜索处，并将改行放到屏幕中心。
noremap = nzz
noremap - Nzz

"重做
noremap U <C-R>

map S :w<CR>
map s <nop>
map Q :q<CR>
map q <nop>
map R :source $MYVIMRC<CR>

"分屏
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

"在分屏之间移动
map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l

"分屏大小调整
map <LEADER><up> :res -5<CR>
map <LEADER><down> :res +5<CR>
map <LEADER><left> :vertical res +5<CR>
map <LEADER><right> :vertical res -5<CR>

"标签页
map tn :tabe<CR>
map <tab>l :tabnext<CR>
map <tab>j :tabprevious<CR>

"识别文件类型,部分插件需要
filetype on
filetype indent on
filetype plugin on 
filetype plugin indent on

map <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l

"关闭搜索高亮
noremap <LEADER><CR> :nohlsearch<CR>

"VIM插件管理器
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
"Plug 'ycm-core/YouCompleteMe'
Plug 'junegunn/vim-peekaboo'  "显示双引号功能的选项,管理剪贴板用的
Plug 'junegunn/goyo.vim'

call plug#end()

"关于插件的配置，需要写在在这以后

"配色
color snazzy
"let g:SnazzyTransparent = 1 "透明背景

"------------airline-----------
"if !exists('g:airline_symbols')
"			let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"
"let g:airline_exclude_filename = []
"let g:Powerline_symbols='fancy'
"let g:airline_powerline_fonts=0
"let Powerline_symbols='fancy'
"let g:bufferline_echo=0
"set laststatus=2
"set t_Co=256
""set fillchars+=stl:\ ,stlnc:\

"-----------NERDTree----------
map tt :NERDTreeToggle<CR>

"----------Goyo--------------
"map <LEADER>gy :Goyo<CR> "专注模式
