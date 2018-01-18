#!/bin/sh -e
defaults write com.apple.dock autohide -boolean true
defaults write com.apple.dock persistent-apps "$(cat persistent-apps.plist)"