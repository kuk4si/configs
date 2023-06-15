#
# ~/.bashrc
#
source ~/.git-prompt.sh
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


# My custom bash (for Arch)
# Default colors:
DEFAULT="\e[39m"
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
SKY="\e[36m"
GRAY="\e[37m"
ENDCOLOR="\e[0m"

# \u - current user 
# \h - short hostname
# \W - current working dir
# \exit status of the command

#To show PC name add ${MAGENTA}\h@${ENDCOLOR} to next line.

#Show Git branch:

parse_git_branch() {
		git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# $(parse_git_bg)\]$(__git_ps1)\[\033[0;32m
export PS1="${SKY} \u${ENDCOLOR}[${GREEN}\w${ENDCOLOR}]${YELLOW}\$(parse_git_branch)${ENDCOLOR} » "


# ============ Alias ============
#
# GIT:
alias gts="git status"

