#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias \
	e="$EDITOR" \
	se="sudo $EDITOR"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias ls='ls --color=auto'
PS1='\e[31m[\u \W]\e[32m$(parse_git_branch)\e[31m=>>\e[30m '
