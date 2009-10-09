#命令提示符 
#RPROMPT=$(echo '%{\033[31m%}%D %T%{\033[m%}')
PROMPT=$(echo '%{\033[01;36m%}%n@%M%{\033[33m%}(%~) %(!.#.$) %{\033[m%}')

#history settings
export HISTSIZE=3000            #历史纪录条目数量
export SAVEHIST=3000            #注销后保存的历史纪录条目数量
export HISTFILE=~/.zhistory 
setopt INC_APPEND_HISTORY       #以附加的方式写入历史纪录
#setopt HIST_IGNORE_DUPS         #如果连续输入的命令相同，历史纪录中只保留一个
setopt hist_ignore_all_dups
#setopt EXTENDED_HISTORY         #为历史纪录中的命令添加时间戳

#启用 cd 命令的历史纪录，cd -[TAB]进入历史路径
setopt AUTO_PUSHD
#相同的历史路径只保留一个
setopt PUSHD_IGNORE_DUPS

#在命令前添加空格，不将此命令添加到纪录文件中
setopt HIST_IGNORE_SPACE


#杂项 
#允许在交互模式中使用注释  例如： cmd #这是注释
setopt INTERACTIVE_COMMENTS      
      
#禁用 core dumps
limit coredumpsize 0

#Emacs风格 键绑定
bindkey -e
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^[[A' history-beginning-search-backward-end
bindkey '^[[B' history-beginning-search-forward-end
#Rebind HOME and END to do the decent thing:
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey '\eOH' beginning-of-line    #for non RH/debian xterm
bindkey '\eOF' end-of-line
#设置 [DEL]键 为向后删除
bindkey "\e[3~" delete-char

#以下字符视为单词的一部分
WORDCHARS='*?_-[]~=&;!#$%^(){}<>'

#自动补全功能 
setopt AUTO_LIST
setopt AUTO_MENU
#开启此选项，补全时会直接选中菜单项
#setopt MENU_COMPLETE

autoload -U compinit
compinit

#自动补全缓存
#zstyle ':completion::complete:*' use-cache on
#zstyle ':completion::complete:*' cache-path .zcache
#zstyle ':completion:*:cd:*' ignore-parents parent pwd

#自动补全选项
zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:predict:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate

#路径补全
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-shlashes 'yes'
zstyle ':completion::complete:*' '\\'

zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always

#彩色补全菜单 
eval $(dircolors -b /etc/DIR_COLORS) 
export ZLSCOLORS="${LS_COLORS}"
zmodload zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

#错误校正      
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

#kill 命令补全      
compdef pkill=kill
compdef pkill=killall
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:processes' command 'ps -au$USER'

#补全类型提示分组 
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'

##行编辑高亮模式 
# Ctrl+@ 设置标记，标记和光标点之间为 region
zle_highlight=(region:bg=magenta  #选中区域 
               special:bold       #特殊字符
               isearch:underline) #搜索时使用的关键字

#命令别名 
alias ls='ls -F --color=auto'
alias lh='ls -hl'
alias ll='ls -Fl'
alias la='ls -A'
alias lla='ls -Ahl'
alias mv='mv -i'
alias cp='cp -i'
alias grep='grep --color=auto'

# Set up auto extension stuff
alias -s png=xnview
alias -s jpg=xnview
alias -s gif=xnview
alias -s pdf=epdfview
alias -s rmvb=mplayer
alias -s rm=mplayer
#alias -s bz2=tar jxvf
#[Esc][h] man 当前命令时，显示简短说明 
alias run-help >&/dev/null && unalias run-help
autoload run-help

#历史命令 top10
alias top10='print -l  ${(o)history%% *} | uniq -c | sort -nr | head -n 10'

#路径别名 进入相应的路径时只要 cd ~xxx
#hash -d c="/home/dark/movz/c"
hash -d h="/home/dark/movz/h"
hash -d t="/home/dark/movz/t"
hash -d m="/home/dark/movz/.tm"
hash -d dl="/home/dark/movz/t/ut"
hash -d d="/home/dark/movz/t/ut/done"
hash -d p="/home/dark/movz/p"
hash -d r="/home/dark/movz/r"
hash -d c="/home/dark/movz/c"
hash -d o="/home/dark/movz/o"

setopt extended_glob
preexec () {
        if [[ "$TERM" == "screen" ]]; then
            local CMD=${1[(wr)^(*=*|sudo|-*)]}
            echo -ne "\ek$CMD\e\\"
        fi
}
