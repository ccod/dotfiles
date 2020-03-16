ZSH_THEME="bira"

autoload -U colors && colors
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

plugins=(
  git
  dotenv
  vi-mode
  colorize
)

autoload -Uz compinit
compinit

source $ZSH/oh-my-zsh.sh


