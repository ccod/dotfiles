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
kitty + complete setup zsh | source /dev/stdin

source $ZSH/oh-my-zsh.sh


