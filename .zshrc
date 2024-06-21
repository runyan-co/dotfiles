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
  z
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

# Allows PHPStorm to launch from command line
export PATH="/Applications/PhpStorm.app/Contents/MacOS:$PATH"

# Java
#export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Sets the githubtoken
source $HOME/.config/dotfiles/.bootstrap

# Custom Zsh Functions
source $HOME/.config/dotfiles/.functions

# Custom Aliases
source $HOME/.config/dotfiles/.aliases

#if [ -n "$RSA_ADDED" ]; then
#  ssh-add ~/.ssh/id_rsa
#  export RSA_ADDED=true
#fi
