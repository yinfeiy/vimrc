" 使用vim特性
set nocompatible
set nospell

set shellslash
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
"defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20 

" 运行文件类型插件
filetype on
filetype plugin on
filetype plugin indent on

set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'

""""""""""""""""""""""""""""""
" Set mapleader
""""""""""""""""""""""""""""""
" let mapleader = ","

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
""""""""""""""""""""""""""""""

" 允许当前缓冲区不保存就转到后台
set hidden

" 命令行模式tab补全修改
set wildmenu
set wildmode=list:longest

" 不显示按Enter执行消息
set shortmess=atI

" Error bells are displayed visually.
set visualbell

" 自动读取文件当文件被外部程序改变时
set autoread

" 设置鼠标始终使用
set mouse=a

" 修改工具栏和菜单栏
"set guioptions-=m
"set guioptions-=T
"set title
"set scrolloff=999
"set wrapmargin=80


" 快速插入时间
" To insert timestamp, press F11.
nmap <F11> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F11> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" 在windows下设置字体
" set guifont=Monaco:h12
"set guifont=Yahei_Consolas_Hybrid:h12
" 在linux下设置
" set guifont=Monaco\ 12

" 当vimrc文件修改时自动读入
autocmd! bufwritepost _vimrc source $MYVIMRC

" 使用颜色主题
"" colorscheme oceandeep
colorscheme darkblue
"" colorscheme darkspectrum

" 映射特殊键
let mapleader=";"
nnoremap ' `
nnoremap ` '

" 显示光标所在行
if has("gui_running")
    set cursorline
    hi cursorline guibg=White
    hi CursorColumn guibg=White
endif


" 设置保存的历史命令最大数
set history=500

" 显示命令信息,按键信息,光标位置等
set showcmd
set showmode
set ruler

" 文件相关设置
" 设置查找路径
" set path+=e:\\work,e:\\work\\*

" 打开一个文件时自动切换当前目录
autocmd BufEnter * lcd %:p:h

" 设置文件格式
set ffs=unix,dos

" 设置备份文件目录
" set backupdir="D:\Temp"
" set directory = "D:\Temp"

" 设置搜索
set hlsearch
set incsearch
nmap <silent> <leader>nh :silent :nohlsearch<CR>
set ignorecase
set smartcase

" 设置帮助语言为中文
set helplang=cn
set encoding=chinese
set fileencodings=chinese,ucs-bom,utf-8,taiwan,latin1

" 编程相关设置
" 语法高亮
syntax on

" 显示行号
set number

" 退格键能够删除空行、缩进等
set backspace=indent,eol,start

" 设置语法折叠
" 在vimrc中设置与C-support插件冲突,可通过project插件in.vim设置
setl foldmethod=syntax

" 设置softtab键
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" 显示匹配符号
set showmatch
set matchtime=15

" 设置补全
" set completeopt=menuone,preview
" set previewheight=5
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_DefaultNamespaces=["std"]
" let OmniCpp_SelectFirstItem = 2
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" 设置Omni menu颜色
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff
" 插入模式弹出菜单时映射
inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
inoremap <expr> <C-J>      pumvisible()?"\<PageDown>\<C-N>\<C-P>":"\<C-X><C-O>"
inoremap <expr> <C-K>      pumvisible()?"\<PageUp>\<C-P>\<C-N>":"\<C-K>"
inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>"


" C语言缩进
set cindent

" 设置tag文件路径
set tags=./tags,./../tags,./*/tags
autocmd BufEnter *.c set tags+=~/ctags
autocmd BufEnter *.cpp,*.h set tags+=~/cpptags,~/ctags

" 编译设置
" set shell="D:\cygwin\bin\bash"
" set makeprg=gcc\ -g\ -Wall
" set makeprg=gcc\ -g\ -Wall


" 设置buftabs插件
set laststatus=2
let g:buftabs_in_statusline=1 
let g:buftabs_only_basename=1

" 设置MRU插件
let MRU_Max_Entries=25
let MRU_Auto_Close=1

" 设置taglist插件
nnoremap <Leader>ta :TlistToggle<cr>
nnoremap <Leader>to :TlistOpen<cr>
inoremap <Leader>ta <Esc>:TlistToggle<cr>
inoremap <Leader>to <Esc>:TlistOpen<cr>
let Tlist_Exit_Onlywindows=1
" let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Sort_Type="name"
let Tlist_Auto_Update = 1

" tagbar
nmap <F8> :TagbarToggle<CR>

" 设置project插件
let g:proj_flags="imstg"
nmap <silent> <Leader>jj <Plug>ToggleProject
nnoremap <silent> <Leader>jo :Project<cr>
imap <silent> <Leader>jj <Plug>ToggleProject
inoremap <silent> <Leader>jo <Esc>:Project<cr>
let g:LoadedTagCscope = 0


" 设置csupport插件
" let g:C_AuthorName="gabreilgao"
" let g:C_AuthorRef="Yequan Gao"
" let g:C_Email="redhat008@gmail.com"
" let g:C_Company="Tencent"

" 设置autotemple插件
let g:user="redhat008"
let g:email="redhat008@gmail.com"

" 设置NERDCommenter插件
let NERDComInInsertMap=',cc'

" 启动窗口最大化
" autocmd GUIEnter * simalt ~x

" 启动时进入主目录
cd $HOME


""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1 
let g:bufExplorerSortBy='mru'
let g:bufExplorerSplitRight=0
let g:bufExplorerSplitVertical=1
let g:bufExplorerSplitVertSize = 30 
let g:bufExplorerUseCurrentWindow=1 
autocmd BufWinEnter \[Buf\ List\] setl

""""""""""""""""""""""""""""""
" netrw setting
""""""""""""""""""""""""""""""
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr>

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr>

" map <A-left> :bp<cr>
" map <A-right> :bn<cr>
nnoremap <Leader>p :bp<cr>
nnoremap <Leader>n :bn<cr>

map <F7> mzgg=G`z<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>

"""""""""""""""""""""""""""""
" NERD_tree
"""""""""""""""""""""""""""""
let g:NERDTreeDirArrows=0
let g:NERDTreeWinPos = "left"
nnoremap <Leader>nn :NERDTree<cr>

""""""""""""""""""""""""""""
" python execute current file
""""""""""""""""""""""""""""
nnoremap <F9> :!python %:p


""""""""""""""""""""""""""""
" copy to system clipboard
""""""""""""""""""""""""""""
map <Leader>y "+y
