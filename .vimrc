
let mapleader="," 
set runtimepath^=~/.vim/bundle/ctrlp.vim

"
"ctrlp设置
"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v\.(exe|so|dll)$'
let g:ctrlp_extensions = ['funky']


let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
nnoremap <Leader>fu :CtrlPFunky<Cr>
"narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']


let NERDTreeIgnore=['\.pyc']
" This line should not be removed as it ensures that various options are
"
" properly set to work with the Vim-related packages available in Debian.
"debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
syntax on " 语法高亮
endif
colorscheme ron " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下

" detect file type
filetype on
filetype plugin on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"have Vim load indentation rules and plugins according to the detected filetype
filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.

"set ignorecase " 搜索模式里忽略大小写
"set smartcase " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
set autowrite " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
set autoindent " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
"set smartindent " 智能对齐方式
set tabstop=4 " 设置制表符(tab键)的宽度
set softtabstop=4 " 设置软制表符的宽度
set shiftwidth=4 " (自动) 缩进使用的4个空格
set cindent " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "设置C/C++语言的具体缩进方式
"set backspace=2 " 设置退格键可用
set showmatch " 设置匹配模式，显示匹配的括号
set linebreak " 整词换行
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
"set hidden " Hide buffers when they are abandoned
set mouse=a " Enable mouse usage (all modes) "使用鼠标
set number " Enable line number "显示行号
"set previewwindow " 标识预览窗口
set history=50 " set command history to 50 "历史记录50条


"--状态行设置--
set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set ruler " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。

"--命令行设置--
set showcmd " 命令行显示输入的命令
set showmode " 命令行显示vim当前模式

"--find setting--
set incsearch " 输入字符串就显示匹配点
set hlsearch



"--ctags setting--
"" 按下F5重新生成tag文件，并更新taglist
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags "add current directory's generated tags file




"-- omnicppcomplete setting --
"" 按下F3自动补全代码，注意该映射语句后不能有其他字符，包括tab；否则按下F3会自动补全一些乱码
"imap <F3> <C-X><C-O>
" 按下F2根据头文件内关键字补全
"imap <F2> <C-X><C-I>
set completeopt=menu,menuone " 关掉智能补全时的预览窗口
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup  window
let OmniCpp_GlobalScopeSearch=1 " enable the global scope search
let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all members
"let OmniCpp_DefaultNamespaces=["std"]
let OmniCpp_ShowScopeInAbbr=1 " show scope in abbreviation and remove the last column
let OmniCpp_ShowAccess=1


"-- Taglist setting --
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
"是否一直处理tags.1:处理;0:不处理
let Tlist_Process_File_Always=1 "实时更新tags
let Tlist_Inc_Winwidth=0




"-- WinManager setting --
let g:winManagerWindowLayout='FileExplorer|TagList' " 设置我们要管理的插件
""let g:persistentBehaviour=0 " 如果所有编辑文件都关闭了，退出vim
nmap wm :WMToggle<cr>






" -- MiniBufferExplorer --
let g:miniBufExplMapWindowNavVim = 1 "按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapWindowNavArrows = 1 "按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapCTabSwitchBufs = 1 "启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
"let g:miniBufExplMapCTabSwitchWindows = 1 "启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
let g:miniBufExplModSelTarget = 1 "不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer









"--fold setting--
set foldmethod=syntax " 用语法高亮来定义折叠
set foldlevel=100 " 启动vim时不要自动折叠代码
set foldcolumn=5 " 设置折叠栏宽度






"-- Cscope setting --
if has("cscope")
set csprg=/usr/bin/cscope " 指定用来执行cscope的命令
set csto=0 "
"设置cstag命令查找次序：0先找cscope数据库再找标签文件；1先找标签文件再找cscope数据库
set cst " 同时搜索cscope数据库和标签文件
set cscopequickfix=s-,c-,d-,i-,t-,e- " 使用QuickFix窗口来显示cscope查找结果
set nocsverb
if filereadable("cscope.out") "若当前目录下存在cscope数据库，添加该数据库到vim
cs add cscope.out
elseif $CSCOPE_DB != "" "否则只要环境变量CSCOPE_DB不为空，则添加其指定的数据库到vim
cs add $CSCOPE_DB
endif
set csverb
endif
map <F4> :cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>
imap <F4> <ESC>:cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>
" 将:cs find c等Cscope查找命令映射为<C-_>c等快捷键（按法是先按Ctrl+Shift+-,然后很快再按下c）


nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>





"代码格式优化化

map <F6> :call FormartSrc()<CR><CR>

"定义FormartSrc()
func FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc
"
"
"

imap jj <Esc>

:nmap <silent> <F9> <ESC>:Tlist<RETURN>


  
map <leader>w :w<CR>

set mouse=a
set mouse=v
set selection=exclusive
set selectmode=mouse,key



" 设置NerdTree
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>




"设置Grep插件
nnoremap <silent> <F7> :Grep<CR>



syntax enable
set background=dark
colorscheme solarized