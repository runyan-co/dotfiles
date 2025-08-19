#!/usr/bin/env bash

# -------------------------------------------------------------- //
# Functions
# -------------------------------------------------------------- //

clearLogs() {
  CURRENT="$(pwd)"
  APP_DIR="$HOME/code/ludus-next"
  APP_LOGS="$APP_DIR/storage/logs"
  NON_APP_LOGS="$APP_DIR/logs"
  
  if [ -d "$NON_APP_LOGS" ]; then
    echo "Clearing non-app logs (e.g. nginx access/error logs, etc.)...";
    cd "$NON_APP_LOGS";
    bash -c 'for file in *.log; do >$file; done'; 
  fi
 
  if [ -d "$NON_APP_LOGS" ]; then
    echo "Clearing app logs...";
    cd "$APP_LOGS";
    bash -c 'for file in *.log; do >$file; done';
  fi

  cd "$CURRENT";
  echo "Done!";
}

clone() {
  git clone "git@github.com:$1/$2.git"
}

remotedocker() {
  # 169.254.211.199
  # 192.168.100.73
  export DOCKER_HOST="tcp://$MACBOOK_IP:2375"
}

ludus-build() {
  CUR_DIR="$(pwd)"
  echo "Clearing logs...";
  clearLogs;
  ludus-down;
  { 
    cd "$HOME/code/ludus-next" && \
    echo "Building ludus-next..." && \
    docker compose build next.ludus.test --no-cache > ./logs/build-output.log
  } &
  { 
    cd "$HOME/code/ludus" && \
    echo "Building ludus (legacy)..." && \
    docker compose build --no-cache > ./logs/build-output.log
  } & wait;
  cd "$CUR_DIR";
}

ludus-up() {
  CUR_DIR="$(pwd)"
  cd "$HOME/code/ludus-next" && \
    docker compose up -d && \
  cd "$HOME/code/ludus" && \
    docker compose up -d && \
  cd "$CUR_DIR";
}

ludus-down() {
  CUR_DIR="$(pwd)"
  cd "$HOME/code/ludus" && \
    docker compose down && \
  cd "$HOME/code/ludus-next" && \
    docker compose down && \
  cd "$CUR_DIR";
}

initnvm() {
  export NVM_DIR="$HOME/.nvm"

  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}

sharedocker() {
  if [ -S "/Users/alex/.docker/run/docker.sock" ]; then
    sudo socat -d TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/Users/alex/.docker/run/docker.sock
  elif [ -S "/var/run/docker.sock" ]; then
    sudo socat -d TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock
  else
    echo "Couldn't find docker socket, is docker running?"
  fi
}

##
# Disables .DS_Store creation
##
disableDsStore() {
  defaults write com.apple.desktopservices DSDontWriteNetworkStores true
}

##
# Enables .DS_Store creation
##
enableDsStore() {
  defaults write com.apple.desktopservices DSDontWriteNetworkStores false
}

##
# Restart the macOS DNS service
##
killDns() {
  sudo killall -HUP mDNSResponder
  echo "DNS responder service restarted"
}

