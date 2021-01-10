#
# ~/.bash_profile
#

export PATH=$PATH:$HOME/.local/bin
export TERMINAL="st"
export EDITOR="nvim"
export BROWSER="firefox"
export XDG_CONFIG_HOME=$HOME/.config
export BSPS=$HOME/.config/bspwm/scripts

[[ -f ~/.bashrc ]] && . ~/.bashrc
