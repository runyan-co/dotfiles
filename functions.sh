#!/usr/bin/env bash

# -------------------------------------------------------------- //
# Functions
# -------------------------------------------------------------- //

#
# Source the aliases (.a) file if found
#
sourceAliases() {
  [ -f "$QV_CRM_DIR/.a"  ] && source "$QV_CRM_DIR/.a"
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

