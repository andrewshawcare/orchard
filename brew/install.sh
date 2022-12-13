#!/bin/bash -e

if ! type brew; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo 'eval "$(/usr/local/bin/brew shellenv)"' >> "${HOME}/.zprofile"
  eval "$(/usr/local/bin/brew shellenv)"
  brew analytics off
fi
