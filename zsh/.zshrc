# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#alias vim="/usr/local/Cellar/vim/7.4.488/bin/vim"
export GIT_EDITOR=/Users/harry/bin/nvim/bin/nvim

alias vim="/Users/harry/bin/nvim/bin/nvim"
#alias vi=vim
alias py="/Users/harry/opt/anaconda3/bin/python"
alias ipy="/Users/harry/opt/anaconda3/bin/ipython"
alias tmux="tmux -2"
alias tm-ls="tmux list-sessions"
alias tm-at="tmux attach -t "
alias tm-ns="tmux new -s "
alias tm-de="tmux detach "
alias cr="clear"
alias t256="export TERM=screen-256color"
alias ttr="export TERM=xterm"
alias ali-ls="cat ~/.zshrc | egrep \"^alias\""
alias git="/usr/local/opt/git/bin/git"
alias docker-pid="sudo docker inspect --format '{{.State.Pid}}'"
alias docker-ip="sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

alias va-up="cd /Users/harry/V/WebDevBox && vagrant up --provider virtualbox --provision"
alias va-halt="cd /Users/harry/V/WebDevBox && vagrant halt"
alias va-ssh="cd /Users/harry/V/WebDevBox && vagrant ssh"
alias va-reload="cd /Users/harry/V/WebDevBox && vagrant reload"
alias va-po="cd /Users/harry/V/WebDevBox && vagrant provision"

#alias ls="ls --color=auto"
#alias ll="ls --color -al"
alias ls='lsd'
alias l='lsd -l'
alias la='lsd -a'
alias ll='lsd -la'
alias lt='lsd --tree'
alias llt='lsd -la --tree'
alias grep='grep --color=auto'
# 创建密码
alias genpasswd="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo"
# 查询历史 
alias histg="history | grep"
# 树形显示目录
#alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
# 内存信息
alias meminfo='free -m -l -t'
# 进程查询
alias psg="ps aux | grep"
# 显示出哪个应用程序连接到网络
alias listen="lsof -P -i -n"
#显示出活动的端口
alias port='netstat -tulanp'
# 获得你的公网IP地址和主机名
alias ipinfo="curl ifconfig.me && curl ifconfig.me/host"

alias perm_wireshark="sudo chgrp admin /dev/bpf* && chmod g+rw /dev/bpf*"

alias pon='export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5h://127.0.0.1:7891'
alias pon2='export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;'
alias poff='unset http_proxy;unset https_proxy;unset all_proxy'
alias gfw='proxychains4'

alias down='/usr/local/bin/aria2c'
alias down-daemon='/usr/local/bin/aria2c --enable-rpc --rpc-listen-all --rpc-secret=harryport'
alias weather='curl -H "Accept-Language: zh" "http://wttr.in"'

alias jump='ssh -p2222 harry.tian@39.105.166.15'
alias jump-ftp='sftp -P2222 harry.tian@39.105.166.15'
alias clash-conf-edit='vim /Users/harry/.config/clash/neoapi.co.yaml'

alias mycli-local='mycli -h127.0.0.1 -uharry -pharry'
alias mycli-polar-slave='mycli -hpolar-pub-data-ro-001.rwlb.rds.aliyuncs.com -ugeekbang -px8$O42myY7F5'

alias rm=trash
alias go-dev='ssh harry@112.126.60.133'

eval $(/usr/local/bin/thefuck --alias geek)


# 创建目录并进入目录
mcd() { mkdir -p "$1"; cd "$1";}
# 进入目录并列表
cls() { cd "$1"; ll;}
# 取md5
md5check() { md5sum "$1" | grep "$2";}
# 解压
extract() {
if [ -f $1 ] ; then
case $1 in
*.tar.bz2) tar xjf $1 ;;
*.tar.gz) tar xzf $1 ;;
*.bz2) bunzip2 $1 ;;
*.rar) unrar e $1 ;;
*.gz) gunzip $1 ;;
*.tar) tar xf $1 ;;
*.tbz2) tar xjf $1 ;;
*.tgz) tar xzf $1 ;;
*.zip) unzip $1 ;;
*.Z) uncompress $1 ;;
*.7z) 7z x $1 ;;
*) echo "'$1' cannot be extracted via extract()" ;;
esac
else
echo "'$1' is not a valid file"
fi
}

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git tmux osx docker docker-compose zsh-syntax-highlighting zsh-autosuggestions zsh-completions)

source $ZSH/oh-my-zsh.sh

# User configuration
#

#export GOPATH=/Users/harry/Code/GeekBang/go
export GOPATH=/Users/harry/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/go
export GOPRIVATE='code.geekbang.org/rd/*'
#export GOPROXY=https://gomodproxy.geekbang.org,direct
export GOPROXY=https://goproxy.io,direct

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=.:$CLASSPATH:$JAVA_HOME/lib:$JRE_HOME/lib  

export ANDROID_HOME=/Users/harry/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME

export -U ANDROID_SDK=$ANDROID_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export -U JAVABIN=$JAVA_HOME/bin:$JRE_HOME/bin
export -U HARRYBIN=$HOME/bin:$HOME/bin/fzf:$GOROOT/bin:$GOBIN
export -U LOCALBIN=/usr/local/bin:/usr/local/sbin
export -U PATH=$HARRYBIN:$LOCALBIN:$JAVABIN:$ANDROID_SDK:$PATH:

export SSLKEYLOGFILE=/Users/harry/.ssl/sslkeylog.log


#PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p%{$fg[cyan]%}%d %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}> '
#PROMPT='%{$fg_bold[yellow]%}%n%{$fg_bold[red]%} ➽  %{$fg[green]%}%5(C.%-3d/~~/%1d.%d) %{$fg_bold[blue]%}$(git_prompt_info) %{$fg_bold[red]%}% ➜  %{$reset_color%}'

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
[[ -s ~/bin/z ]] && . ~/bin/z

##### fzf and completion #####
# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/harry/bin/fzf/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/harry/bin/fzf/key-bindings.zsh"

autoload -U compinit && compinit -u

# explain.sh begins
explain () {
  if [ "$#" -eq 0 ]; then
    while read  -p "Command: " cmd; do
      curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$cmd"
    done
    echo "Bye!"
  elif [ "$#" -eq 1 ]; then
    curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$1"
  else
    echo "Usage"
    echo "explain                  interactive mode."
    echo "explain 'cmd -o | ...'   one quoted command to explain it."
  fi
}

function docker-enter() {
    #if [ -e $(dirname "$0")/nsenter ]; then
    #Change for centos bash running
    if [ -e $(dirname '$0')/nsenter ]; then
        # with boot2docker, nsenter is not in the PATH but it is in the same folder
        NSENTER=$(dirname "$0")/nsenter
    else
        # if nsenter has already been installed with path notified, here will be clarified
        NSENTER=$(which nsenter)
        #NSENTER=nsenter
    fi
    [ -z "$NSENTER" ] && echo "WARN Cannot find nsenter" && return

    if [ -z "$1" ]; then
        echo "Usage: `basename "$0"` CONTAINER [COMMAND [ARG]...]"
        echo ""
        echo "Enters the Docker CONTAINER and executes the specified COMMAND."
        echo "If COMMAND is not specified, runs an interactive shell in CONTAINER."
    else
        PID=$(sudo docker inspect --format "{{.State.Pid}}" "$1")
        if [ -z "$PID" ]; then
            echo "WARN Cannot find the given container"
            return
        fi
        shift

        OPTS="--target $PID --mount --uts --ipc --net --pid"

        if [ -z "$1" ]; then
            # No command given.
            # Use su to clear all host environment variables except for TERM,
            # initialize the environment variables HOME, SHELL, USER, LOGNAME, PATH,
            # and start a login shell.
            #sudo $NSENTER "$OPTS" su - root
            sudo $NSENTER --target $PID --mount --uts --ipc --net --pid su - root
        else
            # Use env to clear all host environment variables.
            sudo $NSENTER --target $PID --mount --uts --ipc --net --pid env -i $@
        fi
    fi
}

TRAPWINCH() {
  zle && { zle reset-prompt; zle -R }
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/harry/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/harry/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/harry/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/harry/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_PROMPT_ADD_NEWLINE_COUNT=2
#POWERLEVEL9K_DISABLE_RPROMPT=true
#
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context time dir vcs)
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs newline)
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ram battery disk_usage time)


# CONTEXT
typeset -g POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="130"
typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="239"

# TIME 
POWERLEVEL9K_TIME_BACKGROUND="011"
POWERLEVEL9K_TIME_FOREGROUND="239"

# OS_ICON
POWERLEVEL9K_OS_ICON_BACKGROUND="160"
POWERLEVEL9K_OS_ICON_FOREGROUND="015"

# DIR
POWERLEVEL9K_DIR_HOME_BACKGROUND="034"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="034"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="034"

POWERLEVEL9K_DIR_HOME_FOREGROUND="235"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="235"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="235"
POWERLEVEL9K_DIR_SHORTENED_FOREGROUND="235"
POWERLEVEL9K_DIR_ANCHOR_FOREGROUND="235"

POWERLEVEL9K_SHORTEN_STRATEGY=truncate_from_right
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER='~'
#POWERLEVEL9K_DIR_PATH_SEPARATOR="%B"
POWERLEVEL9K_DIR_ANCHOR_BOLD=true

# VCS
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='015'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='015'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='015'

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='002'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='214'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='190'

# STATUS
# POWERLEVEL9K_STATUS_BACKGROUND="202"

# RAM
POWERLEVEL9K_RAM_BACKGROUND="002"
POWERLEVEL9K_RAM_FOREGROUND="011"

# BATTERY
POWERLEVEL9K_BATTERY_BACKGROUND="057"
POWERLEVEL9K_BATTERY_FOREGROUND="011"

# DISK_USAGE
POWERLEVEL9K_DISK_USAGE_BACKGROUND="125"
POWERLEVEL9K_DISK_USAGE_FOREGROUND="011"

# FONT
# POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_MODE='nerdfont-complete'
