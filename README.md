
linux config

主题
地址：https://github.com/altercation/vim-colors-solarized
安装：

$ cd vim-colors-solarized/colors
$ mv solarized.vim ~/.vim/colors/
 然后在 ~/.gvimrc 文件中添加以下几行命令

syntax enable
set background=dark
colorscheme solarized

vim config 

basic url
http://www.cnblogs.com/zhangsf/archive/2013/06/13/3134409.html

vim-addons install taglist

:Tlist

vim-addons install winmanager
vim-addons install minibufexplorer

代码折叠fold

za  打开/关闭在光标下的折叠
zA  循环地打开/关闭光标下的折叠
zo  打开 (open) 在光标下的折叠
zO  循环打开 (Open) 光标下的折叠
zc  关闭 (close) 在光标下的折叠
zC  循环关闭 (Close) 在光标下的所有折叠
zM  关闭所有折叠
zR  打开所有的折叠

NERDTreeToggle
将解压得到的plugin和doc文件夹
" 设置NerdTree
map  :NERDTreeMirror
map  :NERDTreeToggle

ctags
ctags -R --fields=+lS

Ctrl＋］  跳到当前光标下单词的标签
Ctrl＋O  返回上一个标签
Ctrl＋T  返回上一个标签

ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
--c++-kinds=+p  : 为C++文件增加函数原型的标签
--fields=+iaS   : 在标签文件中加入继承信息(i)、类成员的访问控制信息(a)、以及函数的指纹(S)
--extra=+q      : 为标签增加类修饰符。注意，如果没有此选项，将不能对类成员补全

cscope -Rbq



ctrlp 
http://ctrlpvim.github.io/ctrlp.vim/#installation
$ cd ~/.vim
$ git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim

打包隐藏文件
tar -cvzf xxx.tar.gz * .[!.]*

vim config 

basic url
http://www.cnblogs.com/zhangsf/archive/2013/06/13/3134409.html

vim-addons install omnicppcomplete
Ctrl+X Ctrl+O，此时vi会弹出一个窗口

vim-addons install taglist
:Tlist

vim-addons install winmanager
vim-addons install minibufexplorer

代码折叠fold

za  打开/关闭在光标下的折叠
zA  循环地打开/关闭光标下的折叠
zo  打开 (open) 在光标下的折叠
zO  循环打开 (Open) 光标下的折叠
zc  关闭 (close) 在光标下的折叠
zC  循环关闭 (Close) 在光标下的所有折叠
zM  关闭所有折叠
zR  打开所有的折叠

NERDTreeToggle
将解压得到的plugin和doc文件夹
" 设置NerdTree
map  :NERDTreeMirror
map  :NERDTreeToggle

ctags
ctags -R --fields=+lS

Ctrl＋］  跳到当前光标下单词的标签
Ctrl＋O  返回上一个标签
Ctrl＋T  返回上一个标签

ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
--c++-kinds=+p  : 为C++文件增加函数原型的标签
--fields=+iaS   : 在标签文件中加入继承信息(i)、类成员的访问控制信息(a)、以及函数的指纹(S)
--extra=+q      : 为标签增加类修饰符。注意，如果没有此选项，将不能对类成员补全

cscope -Rbq

F4 重新生成cscope

F6 代码格式化



打包隐藏文件
tar -cvzf xxx.tar.gz * .[!.]*

1： 跳到函数头 [{
2： 跳到函数尾 ]}

make bootimage -j4

di( 删除()中的内容
d$ : 删除光标到行的最后；
y$: 复制光标到行的最后
gg=G 格式化全文

北冥神功 You Complete Me /UltiSnips

:%!xxd 转换16进制
:set list 显示不可见字符
:set fileencoding 设置编码
:set spell 拼写检查
:set scrolloff=3  滚动
:set cursorline 水平线
:set incsearch 增量搜索

粘贴模式
:set paste  :set nopaste

替换 
%s/int/INT/g c confirm
colo tabe 色彩
colorscheme morning
搜索忽略大小写
set ignorecase	" ignore case when searching
命令补全菜单，比默认的补全不要方便太多
set wildmenu   " wild char completion menu




1）####下载vundle 
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

2）打开一个vim, 运行:BundleInstall 
下载对应的bundle

3）安装ycm 
 cd ~/.vim/bundle/YouCompleteMe 
./install.sh --clang-completer





EasyMotion
http://www.wklken.me/posts/2015/06/07/vim-plugin-easymotion.html

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)






oh-my-zsh zsh 安装

https://github.com/robbyrussell/oh-my-zsh

1： sudo apt-get install zsh

2:sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

https://www.zhihu.com/question/19989337/answer/18304091?utm_source=com.smartisanos.notes&utm_medium=social





fzf

http://www.wklken.me/posts/2015/06/07/vim-plugin-airline.html

https://www.ctolib.com/fzf.html#usage

git clone --depth 1 https://github.com/junegunn/fzf.git 
~/.fzf~/.fzf/install


ctrlp 
http://ctrlpvim.github.io/ctrlp.vim/#installation
$ cd ~/.vim
$ git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim



NERD_commenter插件
\cu 取消注释
\cc 增加注释
vim -o2  x1.c x2.c

垂直 vim -O2 x1.c x2.c

mktags

https://code.google.com/archive/p/mktags/downloads


ycm 安装
1）####下载vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

2）修改vimrc
 

3）打开一个vim, 运行:BundleInstall
下载对应的bundle


4）安装ycm

cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

5） 增加配置文件到项目

语意补全要正确工作，需要配置好.ycm_extra_conf.py文件，模板在这里。可以把这个文件放在项目的根目录下，打开项目文件时，YCM会循环向上搜索并加载这个文件，或者在vimrc文件中加入



http://zuyunfei.com/2013/05/16/killer-plugin-of-vim-youcompleteme/
http://zuyunfei.com/2013/04/12/killer-plugin-of-vim-vundle/







8、文件浏览器和缓冲区管理器WinManager
WinManager用于管理文件浏览器和缓冲区（buffer）。2.0以上版本的WinManager还可以管理其他IDE类型插件，不过要用户在插件中增加一些辅助变量和hook来支持WinManager（帮助文档有相关说明）。
Taglist插件本身就提供了对WinManager的支持，不需要我们去修改它。这里，我们就用WinManager来管理文件浏览器netrw和标签浏览器Taglist。netrw是标准的vim插件, 已经随vim一起安装进系统里了, 不需要我们自行下载安装。
安装WinManager
lingd@ubuntu:~$ vim-addons install winmanager
配置WinManager
在vim配置文件/home/user/.vimrc中加入如下的配置：

"-- WinManager setting --
let g:winManagerWindowLayout='FileExplorer|TagList' " 设置我们要管理的插件
"let g:persistentBehaviour=0 " 如果所有编辑文件都关闭了，退出vim
nmap wm :WMToggle<cr>

常用命令
:WMToggle 打开/关闭WinManage，不过我们在配置文件.vimrc中做了快捷键映射，所以直接按wm就可以打开/关闭WinManage
文件浏览器命令（在文件浏览器窗口中使用）
<enter>或双击  如果光标下是目录, 则进入该目录; 如果光标下文件, 则打开该文件
<tab>   如果光标下是目录, 则进入该目录; 如果光标下文件, 则在新窗口打开该文件
<F5> 刷新列表
-  返回上一层目录
c  使浏览目录成为vim当前工作目录
d  创建目录
D  删除当前光标下的目录或文件
i  切换显示方式
R  文件或目录重命名
s  选择排序方式
r  反向排序列表
x  定制浏览方式, 使用你指定的程序打开该文件
winmanager帮助文档
:help winmanager
netrw帮助文档
:help netrw


9、buffer管理器MiniBufferExplorer
MiniBufferExplorer用于浏览和管理buffer，如果只打开一个文件，是不会显示在屏幕上的，而打开多个文件之后，会自动出现在屏幕上。vim也有自带的buffer管理工具，不过只有:ls, :bnext, :bdelete 等的命令, 既不好用, 又不直观.
关于vim缓冲区（buffer）和窗口的概念（详见:help windows）
"缓冲区" 是一块内存区域，里面存储着正在编辑的文件。如果没有把缓冲区里的文件存盘，那么原始文件不会被更改。
"窗口" 被用来查看缓冲区里的内容。你可以用多个窗口观察同一个缓冲区，也可以用多个窗口观察不同的缓冲区。
"屏幕" Vim 所用的整个工作区域，可以是一个终端模拟窗口，也被叫做 "Vim 窗口"。一个屏幕包含一个或多个窗口，被状态行和屏幕底部的命令行分割。
        +-------------------------------+
屏幕    | 窗口 1        | 窗口 2        |
        |               |               |
        |               |               |
        |=== 状态行  ===|==== 状态行 ===|
        | 窗口 3                        |
        |                               |
        |                               |
        |========== 状态行 =============|
        |命令行                         |
        +-------------------------------+
安装MiniBufferExplorer
lingd@ubuntu:~$ vim-addons install minibufexplorer
配置MiniBufferExplorer
在vim配置文件/home/user/.vimrc中加入如下的配置：

" -- MiniBufferExplorer --
let g:miniBufExplMapWindowNavVim = 1 " 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapWindowNavArrows = 1 " 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapCTabSwitchBufs = 1 " 启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
"let g:miniBufExplMapCTabSwitchWindows = 1 " 启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
let g:miniBufExplModSelTarget = 1 " 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer

常用命令
<Tab>  移到上一个buffer
<Shift-Tab> 移到下一个buffer
<Enter>  打开光标所在的buffer
d   删除光标所在的buffer


10、代码折叠fold
折叠用于把缓冲区内某一范围内的文本行显示为屏幕上的一行。就像一张纸，要它缩短
些，可以把它折叠起来:
 +------------------------+
 | 行 1                   |
 | 行 2                   |
 | 行 3                   |
 |_______________________ |
 \                        \
  \________________________\
  / 被折叠的行             /
 /________________________/
 | 行 12                  |
 | 行 13                  |
 | 行 14                  |
 +------------------------+
那些文本仍然在缓冲区内而没有改变。受到折叠影响的只是文本行显示的方式。
折叠的好处是，通过把多行的一节折叠成带有折叠提示的一行，会使你更好地了解对文本
的宏观结构。
折叠方式foldmethod
vim提供以下6种方法来选定折叠方式：
manual 手工定义折叠
indent 更多的缩进表示更高级别的折叠
expr 用表达式来定义折叠
syntax 用语法高亮来定义折叠
diff 对没有更改的文本进行折叠
marker 对文中的标志折叠
折叠级别foldlevel
'foldlevel' 是个数值选项：数字越大则打开的折叠更多。
当 'foldlevel' 为 0 时，所有的折叠关闭。
当 'foldlevel' 为正数时，一些折叠关闭。
当 'foldlevel' 很大时，所有的折叠打开。
折叠栏foldcolumn
'foldcolumn' 是个数字，它设定了在窗口的边上表示折叠的栏的宽度。当为0时，没有折叠栏。最大是12。
一个打开的折叠由一栏来表示，顶端是 '-'，其下方是 '|'。这栏在折叠结束的地方结束。当折叠嵌套时，嵌套的折叠出现在被包含的折叠右方一个字符位置。
一个关闭的折叠由 '+' 表示。
当折叠栏太窄而不能显示所有折叠时，显示一数字来表示嵌套的级别。
在折叠栏点击鼠标，可以打开和关闭折叠：
- 点击 '+' 打开在这行的关闭折叠
- 在任何其他非空字符上点击，关闭这行上的打开折叠
在vim配置文件/home/user/.vimrc中加入如下的配置：

"--fold setting--
set foldmethod=syntax " 用语法高亮来定义折叠
set foldlevel=100 " 启动vim时不要自动折叠代码
set foldcolumn=5 " 设置折叠栏宽度

常用命令
za  打开/关闭在光标下的折叠
zA  循环地打开/关闭光标下的折叠
zo  打开 (open) 在光标下的折叠
zO  循环打开 (Open) 光标下的折叠
zc  关闭 (close) 在光标下的折叠
zC  循环关闭 (Close) 在光标下的所有折叠
zM  关闭所有折叠
zR  打开所有的折叠
帮助文档
:help usr_28.txt
:help fold.txt



11、项目目录数管理器Project
Project插件是用来显示项目的目录树的，这个目录树是默认保存在~/.vimprojects文件中。
安装Project
lingd@ubuntu:~$ vim-addons install project
Project目录树可以通过下面的步骤生成：
1） 打开vim在命令模式下输入 :Project，在屏幕的最左边就会出现一个project框。不过因为没有初始化暂时是空的
2）在命令模式下（不是插入模式）输入\C （大写的C），会出现下面这些信息：
Enter the Name of the Entry: xxxx （输入项目名称）
Enter the Absolute Directory to Load: /xxx/xxx/xxx （输入项目根目录的绝对路径）
Enter the CD parameter: . （“.”为当前目录）或者和项目根目录一致
Enter the File Filter: *.* （符合条件的源文件，可以是*.cpp/*.h等）
PS：项目目录可以嵌套。而且更改之后在~/.vimprojects文件中就能看到内容，你可以手动进行更改。
 
12、quickfix命令集
通过quickfix命令集，你可在 Vim 内编译程序并直接跳转到出错位置进行修正。你可以接着重新编译并做修正，直到不再出错为止。
在vim配置文件/home/user/.vimrc中加入如下的配置：

"-- QuickFix setting --
" 按下F6，执行make clean
map <F6> :make clean<CR><CR><CR>
" 按下F7，执行make编译程序，并打开quickfix窗口，显示编译信息
map <F7> :make<CR><CR><CR> :copen<CR><CR>
" 按下F8，光标移到上一个错误所在的行
map <F8> :cp<CR>
" 按下F9，光标移到下一个错误所在的行
map <F9> :cn<CR>
" 以上的映射是使上面的快捷键在插入模式下也能用
imap <F6> <ESC>:make clean<CR><CR><CR>
imap <F7> <ESC>:make<CR><CR><CR> :copen<CR><CR>
imap <F8> <ESC>:cp<CR>
imap <F9> <ESC>:cn<CR>

帮助文档
:help usr_30
:help quickfix
下面的命令运行 "make" (包括你所给出的参数) 程序并捕捉其运行结果: >
 :make {arguments}
如果编译时出现错误，按 <Enter>，回到vim界面，看不到出错信息了！这时，可以运行以下命令
:cw[indow]
打开quickfix窗口来查看出错信息，它会自动跳到第一处出错的地方。然后，你可以双击出错某一条出错信息，vim就会自动跳转到相应的出错位置
:cn[ext]  光标移到下一个错误所在的行
:cp[revious] 光标移到上一个错误所在的行
:cfirst  到第一处错误
:clast  到最后一处错误
:cc   空间不够时，Vim 会缩短出错信息。如果你想查看详细信息，可以使用此命令
:cl[ist] 列出所有出错信息的概览（只有那些含有文件名或行数的错误信息会被显示，需要查看那些并不含文件名或行数的信息可用“:cl[ist]!”命令）
