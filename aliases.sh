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
alias displayoff="sudo pmset displaysleepnow"
alias displayon="caffeinate -u -t 1"

# Processes
alias stopua="sudo killall -9 UA\ Mixer\ Engine"
alias zombies="ps axo stat,ppid,pid,comm | grep -w defunct"

# Network
alias myip="curl -4 ifconfig.co/ip"
alias killdns="killDns"
#alias ping="gping"

# Composer-related
alias ci="composer install -o"
alias co="composer dumpautoload -o"
alias cu="composer update -o"

# Laravel-related
alias sail="[ -f sail ] && sh sail || sh vendor/bin/sail"
alias bashin="docker compose exec -it queue-worker bash"
alias runin="docker compose exec -it next.ludus.test"
alias artisan="runin php artisan"
alias pest="docker compose exec -it -e=\"XDEBUG_MODE=off\" next.ludus.test /usr/bin/php -d=\"xdebug.mode=off\" ./vendor/bin/pest --order-by=random"
alias pest:coverage="docker compose exec -it -e \"XDEBUG_MODE=coverage\" next.ludus.test /usr/bin/php -d \"xdebug.mode=coverage\" artisan test --parallel --coverage"
alias db="artisan db"
alias blast="echo \n\n\"URL: http://localhost:6006/\"\n\n && sail artisan blast:launch"
alias migrate="sail artisan migrate:fresh"

# Docker-related
alias up="docker compose up -d"
alias down="docker compose down"
alias logs="docker compose logs"
alias ludus-restart="ludus-down && ludus-up"

# MySQL-related
alias start_mysql="$MYSQL_DOCKER_COMPOSE_DIR/start_mysql.sh"
alias stop_mysql="$MYSQL_DOCKER_COMPOSE_DIR/stop_mysql.sh"
