#!/usr/bin/env bash

# -------------------------------------------------------------- //
# Functions
# -------------------------------------------------------------- //

sharedocker() {
  if [ -S "/Users/alex/.docker/run/docker.sock" ]; then
    sudo socat -d TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/Users/alex/.docker/run/docker.sock
  elif [ -S "/var/run/docker.sock" ]; then
    sudo socat -d TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock
  else
    echo "Couldn't find docker socket, is docker running?"
  fi
}

#
# Source the aliases (.a) file if found
#
#sourceAliases() {
#  [ -f "$QV_CRM_DIR/.a"  ] && source "$QV_CRM_DIR/.a"
#}

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

