"为了不和老vi兼容，因为兼容了很多东西没办法用
set nocompatible 

set mouse=a
"filetype on 打开文件类型检测功能；
"filetype indent on 允许vim为不同类型的文件定义不同缩进格式
"允许vim为不同类型的文件定义不同的缩进格式。这条命令也是通过一个脚本来完成加载：$vimRUNTIME/indent.vim。和"filetype plugin on"类似，它也通过设置自动命令，在runtimepath的indent子目录中搜索缩进设置。对c类型的文件来说，它只是打开了cindent选项。
"filetype plugin on 允许vim加载文件类型插件，当这个选项打开时，vim会根据检测到的文件类型，在runtimepath中搜索该类型的所有插件，并执行它们
filetype  indent plugin on

"黑色背景
"set background=dark

"设置高亮颜色和主题颜色
"syntax off
"colorscheme desert  
"colorscheme murphy
"colorscheme evening
"colorscheme elflord
"colorscheme pablo "nice one
"colorscheme darkblue "也不错
"colorscheme torte
"colorscheme default
"highlight Constat term=bold ctermfg=1
"highlight PreProc term=underline ctermfg=2
"highlight Special term=bold ctermfg=6 

"set hidden " hide buffers when they are abandoned

set wildmenu "能帮你在命令行补全函数，带你走进补全的文明时代。但是要求laststus >= 2
set laststatus=2 "显示状态栏(默认值为 1, 无法显示状态栏)
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\%c:%l/%L%)\   " 设置在状态行显示的信息

"set showcmd "在状态列显示目前所执行的指令，未完成的指令片段亦会显示出来

set hlsearch "寻找时，符合字符串会反白表示。预设 off。如果您是使用 vim 的预设的vimrc 檔的话，可设在 F8 键来切换

set ignorecase "寻找时不分大小写，这对中文会造成困扰。预设 off

set smartcase  " 搜索到文件两端时不重新搜索

set backspace=indent,eol,start "设想这样一个情况：当前光标前面有若干字母，我们按下 i 键进入了 Insert 模式，然后输入了 3 个字母，再按 5 下删除(Backspace)。默认情况下，VIM 仅能删除我们新输入的 3 个字母，然后喇叭“嘟嘟”响两声。如果我们“set backspace=start”，则可以在删除了新输入的 3 个字母之后，继续向前删除原有的两个字符。 
"再设想一个情况：有若干行文字，我们把光标移到中间某一行的行首，按 i 键进入 Insert 模式，然后按一下 Backspace。默认情况下，喇叭会“嘟”一声，然后没有任何动静。如果我们“set backspace=eol”，则可以删除前一行行末的回车，也就是说将两行拼接起来。 
"当我们设置了自动缩进后，如果前一行缩进了一定距离，按下回车后，下一行也会保持相同的缩进。默认情况下，我们不能在 Insert 模式下直接按 Backspace 删除行首的缩进。如果我们“set backspace=indent”，则可以开启这一项功能。 
"上述三项功能，你可以根据自己的需要，选择其中一种或几种，用逗号分隔各个选项。建议把这三个选项都选上。

set autoindent "在这种缩进形式中，新增加的行和前一行使用相同的缩进形式.自动缩进 在此之后，如果在一行的开头输入空格或制表符，那么后续的新行将会缩进到相同的位置。在命令模式下，输入 :set autoindent，然后按回车打开自动缩进。通过设置 shiftwidth 确定缩进级别。例如，:set shiftwidth=4 把每级缩进设置为四个空格

set smartindent "在这种缩进模式中，每一行都和前一行有相同的缩进量，同时这种缩进形式能正确的识别出花括号，当遇到右花括号（}），则取消缩进形式。此外还增加了识别C语言关键字的功能。如果一行是以#开头的，那么这种格式将会被特殊对待而不采用缩进格式。

set cindent "写C时很好用，indent 比一般敏感，专为 C 程序代码而设。预设 off。编辑 C/C++ code 时会自动打开

"set nostartofline " leave my cursor where it was  

set ruler  "会在状态列显示游标所在处之行列状态，预设不打开，但建议打开。最右边之代号的意义如下：
"Top  档案第一行在屏幕可见范围。
"Bot  档案最后一行在屏幕可见范围。
"All  档案首尾皆在一个屏幕范围内。
"如非以上三种情形，则会显示相对百分比位置。

set confirm  "各种确认动作。预设 off。 在处理未保存或只读文件的时候，弹出确认

"set visualbell "好像是关于报警的，不太清楚
"set noerrorbells " 关闭错误信息响铃
"set novisualbell " 关闭使用可视响铃代替呼叫
"set t_vb= " 置空错误铃声的终端代码

""set mouse=a "想用在vi中使用鼠标确定位置，用set mouse=a

set cmdheight=1  " 命令行（在状态行下）的高度，默认为1，这里是2

set number " 显示行号

""set cursorline " 突出显示当前行

"set notimeout ttimeout  ttimeoutlen=200 "设置键码超时为100ms，设置映射超时为2000ms 
"    set timeout timeoutlen=2000 ttimeoutlen=10

"set pastetoggle=<F9> "这样直接在插入模式按F9就会在“-- 插入 --”模式和“-- 插入（粘贴） --”模式中切换

set shiftwidth=2  " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=2 " 使得按退格键时可以一次删掉 4 个空格

set expandtab " 将tab键替换成空格

"map Y y$   
""TO Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,  which is the default

"nnoremap <C-L> :nohl<CR><C-L>   
"do not know what this is 

"补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

