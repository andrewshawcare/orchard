#!/bin/bash -e

defaults write com.apple.dock autohide -boolean true
defaults write com.apple.dock persistent-apps "$(cat "$(dirname "$0")"/persistent-apps.plist)"