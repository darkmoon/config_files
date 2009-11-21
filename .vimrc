set nocompatible
set nu
"set paste
set history=200
set viminfo='50,\"1000,:50,n~/.vim/viminfo
"au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

set showcmd
set showmode
set showmatch

set encoding=utf-8

colorscheme pablo
syntax on
autocmd BufReadPre  *.nfo  set fencs=cp437
au BufNewFile,BufRead *.srt setf srt

set mouse-=a
set ruler
set hlsearch
set incsearch 
"set cursorline
set bsdir=buffer

set sw=4
set tabstop=4
set et
set smarttab

let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936,big5,gb18030
set helplang=cn
set statusline=%F%m%r%h%w\ %{&ff}\ %{&fenc}\ [TYPE=%Y]\ [POS=%l,%v][%p%%]
set laststatus=2
