# -------------------------------------------------------------- //
# Oh-My-Zsh Installation Directory
# -------------------------------------------------------------- //

export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8

# -------------------------------------------------------------- //
# ZSH Options
# -------------------------------------------------------------- //

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  colorize
)

# -------------------------------------------------------------- //
# Path Inclusions
# -------------------------------------------------------------- //

# Homebrew
export PATH="/usr/local/sbin:$PATH"

# Node
export PATH="/usr/local/bin/node:$PATH"

# Python
#export PATH="/usr/local/opt/python@3.9/bin:$PATH"

# (uncomment for node v12)
#export PATH="/usr/local/opt/node@12/bin:$PATH"

# Yarn
export PATH="$HOME/.yarn/bin:$PATH"

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Custom Zsh Functions
source $HOME/.config/dotfiles/.functions

# Custom Aliases
source $HOME/.config/dotfiles/.aliases

# Zsh
source $ZSH/oh-my-zsh.sh

