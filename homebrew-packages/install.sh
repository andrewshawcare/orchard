#!/usr/bin/env bash
set -e

if ! brew cask list dropbox; then
  brew cask install dropbox
fi
