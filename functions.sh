#!/usr/bin/env bash

# -------------------------------------------------------------- //
# Functions
# -------------------------------------------------------------- //

##
# Restart the macOS DNS service
##
killDns() {
  sudo killall -HUP mDNSResponder
  echo "DNS responder service restarted"
}

