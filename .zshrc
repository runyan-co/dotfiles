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
export PATH="/opt/homebrew/sbin:/opt/homebrew/bin$PATH"

# MySQL 5.7
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Custom Zsh Functions
source $HOME/.config/dotfiles/.functions

# Custom Aliases
source $HOME/.config/dotfiles/.aliases

# Node Version Manager
source $HOME/.config/dotfiles/.nvm

# Zsh
source $ZSH/oh-my-zsh.sh
