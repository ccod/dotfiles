#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
source <(gopass completion bash)

alias e=$EDITOR
alias se="sudo $EDITOR"
alias p="sudo pacman"
alias ls='ls --color=auto'

## Only useful when making changes to dunst config file
# alias kdun="killall dunst;dunst &"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\e[31m[\u \W]\e[32m$(parse_git_branch)\e[31m=>>\e[30m '
