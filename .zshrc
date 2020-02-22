# -------------------------------------------------------------- //
# Path Inclusions
# -------------------------------------------------------------- //

# Local
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Composer
export PATH=$HOME/.composer/vendor/bin:$PATH

# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Gemfiles
export PATH="/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"

# Custom Zsh Functions
source "$HOME/.config/dotfiles/.functions"

# Custom Aliases
source "$HOME/.config/dotfiles/.aliases"

# -------------------------------------------------------------- //
# Oh-My-Zsh Installation Directory
# -------------------------------------------------------------- //

export ZSH="/Users/agrunyan/.oh-my-zsh"
export LANG=en_US.UTF-8

# -------------------------------------------------------------- //
# ZSH Options
# -------------------------------------------------------------- //

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

# Zsh
source $ZSH/oh-my-zsh.sh
