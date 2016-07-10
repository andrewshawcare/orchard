#!/usr/bin/env bash
set -e

if ! brew cask list dropbox; then
  brew cask install dropbox
fi

if ! brew cask list 1password; then
  brew cask install 1password
fi
