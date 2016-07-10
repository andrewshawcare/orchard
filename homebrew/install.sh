#!/bin/bash
set -e

if ! type brew; then
  INSTALL_SCRIPT=$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)
  /usr/bin/ruby -e "$INSTALL_SCRIPT"
  brew analytics off
fi
