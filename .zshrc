# -------------------------------------------------------------- //
# Oh-My-Zsh
# -------------------------------------------------------------- //

export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  colorize
)

source $ZSH/oh-my-zsh.sh

# -------------------------------------------------------------- //
# Plugins
# -------------------------------------------------------------- //
eval "$(zoxide init zsh)"

# -------------------------------------------------------------- //
# Path Inclusions
# -------------------------------------------------------------- //

# Node Version Manager
# (uncomment the two lines below to use nvm
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Node
export PATH="$HOME/.nvm/versions/node/v16.15.0/bin:$PATH"

# MySQL
export PATH="/opt/homebrew/opt/mysql@8/bin:$PATH"

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# PHP
#export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
#export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"

# Sets the githubtoken
source $HOME/.config/dotfiles/.bootstrap

# Custom Zsh Functions
source $HOME/.config/dotfiles/.functions

# Custom Aliases
source $HOME/.config/dotfiles/.aliases
