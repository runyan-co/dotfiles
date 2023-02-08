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

# Node
export PATH="$HOME/.nvm/versions/node/v18.13.0/bin:$PATH"

# MySQL
export PATH="/opt/homebrew/opt/mysql@8/bin:$PATH"

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

#export DOCKER_HOST=ssh://root@docker-remote:22
