" ʹ��vim����
set nocompatible
set nospell

set shellslash
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
"defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20 

" �����ļ����Ͳ��
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

" ����ǰ�������������ת����̨
set hidden

" ������ģʽtab��ȫ�޸�
set wildmenu
set wildmode=list:longest

" ����ʾ��Enterִ����Ϣ
set shortmess=atI

" Error bells are displayed visually.
set visualbell

" �Զ���ȡ�ļ����ļ����ⲿ����ı�ʱ
set autoread

" �������ʼ��ʹ��
set mouse=a

" �޸Ĺ������Ͳ˵���
"set guioptions-=m
"set guioptions-=T
"set title
"set scrolloff=999
"set wrapmargin=80


" ���ٲ���ʱ��
" To insert timestamp, press F11.
nmap <F11> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F11> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" ��windows����������
" set guifont=Monaco:h12
"set guifont=Yahei_Consolas_Hybrid:h12
" ��linux������
" set guifont=Monaco\ 12

" ��vimrc�ļ��޸�ʱ�Զ�����
autocmd! bufwritepost _vimrc source $MYVIMRC

" ʹ����ɫ����
"" colorscheme oceandeep
colorscheme darkblue
"" colorscheme darkspectrum

" ӳ�������
let mapleader=";"
nnoremap ' `
nnoremap ` '

" ��ʾ���������
if has("gui_running")
    set cursorline
    hi cursorline guibg=White
    hi CursorColumn guibg=White
endif


" ���ñ������ʷ���������
set history=500

" ��ʾ������Ϣ,������Ϣ,���λ�õ�
set showcmd
set showmode
set ruler

" �ļ��������
" ���ò���·��
" set path+=e:\\work,e:\\work\\*

" ��һ���ļ�ʱ�Զ��л���ǰĿ¼
autocmd BufEnter * lcd %:p:h

" �����ļ���ʽ
set ffs=unix,dos

" ���ñ����ļ�Ŀ¼
" set backupdir="D:\Temp"
" set directory = "D:\Temp"

" ��������
set hlsearch
set incsearch
nmap <silent> <leader>nh :silent :nohlsearch<CR>
set ignorecase
set smartcase

" ���ð�������Ϊ����
set helplang=cn
set encoding=chinese
set fileencodings=chinese,ucs-bom,utf-8,taiwan,latin1

" ����������
" �﷨����
syntax on

" ��ʾ�к�
set number

" �˸���ܹ�ɾ�����С�������
set backspace=indent,eol,start

" �����﷨�۵�
" ��vimrc��������C-support�����ͻ,��ͨ��project���in.vim����
setl foldmethod=syntax

" ����softtab��
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" ��ʾƥ�����
set showmatch
set matchtime=15

" ���ò�ȫ
" set completeopt=menuone,preview
" set previewheight=5
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_DefaultNamespaces=["std"]
" let OmniCpp_SelectFirstItem = 2
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" ����Omni menu��ɫ
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff
" ����ģʽ�����˵�ʱӳ��
inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
inoremap <expr> <C-J>      pumvisible()?"\<PageDown>\<C-N>\<C-P>":"\<C-X><C-O>"
inoremap <expr> <C-K>      pumvisible()?"\<PageUp>\<C-P>\<C-N>":"\<C-K>"
inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>"


" C��������
set cindent

" ����tag�ļ�·��
set tags=./tags,./../tags,./*/tags
autocmd BufEnter *.c set tags+=~/ctags
autocmd BufEnter *.cpp,*.h set tags+=~/cpptags,~/ctags

" ��������
" set shell="D:\cygwin\bin\bash"
" set makeprg=gcc\ -g\ -Wall
" set makeprg=gcc\ -g\ -Wall


" ����buftabs���
set laststatus=2
let g:buftabs_in_statusline=1 
let g:buftabs_only_basename=1

" ����MRU���
let MRU_Max_Entries=25
let MRU_Auto_Close=1

" ����taglist���
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

" ����project���
let g:proj_flags="imstg"
nmap <silent> <Leader>jj <Plug>ToggleProject
nnoremap <silent> <Leader>jo :Project<cr>
imap <silent> <Leader>jj <Plug>ToggleProject
inoremap <silent> <Leader>jo <Esc>:Project<cr>
let g:LoadedTagCscope = 0


" ����csupport���
" let g:C_AuthorName="gabreilgao"
" let g:C_AuthorRef="Yequan Gao"
" let g:C_Email="redhat008@gmail.com"
" let g:C_Company="Tencent"

" ����autotemple���
let g:user="redhat008"
let g:email="redhat008@gmail.com"

" ����NERDCommenter���
let NERDComInInsertMap=',cc'

" �����������
" autocmd GUIEnter * simalt ~x

" ����ʱ������Ŀ¼
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
