#!/bin/bash
set -e

if ! type brew; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew analytics off
fi
