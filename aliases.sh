#!/usr/bin/env bash

# -------------------------------------------------------------- //
# Aliases
# -------------------------------------------------------------- //

# Dotfiles shortcut
alias dotfiles="cd $HOME/.config/dotfiles"

# Filesystem
alias bamchmod="stat -f \"%OLp\""
alias ls="eza"
alias la="eza -ag"
alias l="eza -lahg"

# Terminal
alias c="clear"
alias srczsh="source $HOME/.zshrc"
alias vialiases="vi $HOME/.config/dotfiles/aliases.sh"
alias vifunctions="vi $HOME/.config/dotfiles/functions.sh"
alias vim="nvim"
alias vissh="vi $HOME/.ssh/config"
alias vizsh="vi $HOME/.zshrc"

# Misc
alias d="youtube-dl --format mp4 "
alias dl="youtube-dl -x --audio-format wav"
alias nano="vim"

# Processes
alias stopua="sudo killall -9 UA\ Mixer\ Engine"
alias zombies="ps axo stat,ppid,pid,comm | grep -w defunct"

# Network
alias myip="curl -4 ifconfig.co/ip"
alias killdns="killDns"
alias ping="gping"

# Composer-related
alias ci="composer install -o"
alias co="composer dumpautoload -o"
alias cu="composer update -o"

