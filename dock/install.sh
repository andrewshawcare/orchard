#!/bin/bash -e
working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

defaults write com.apple.dock autohide -boolean true
defaults write com.apple.dock persistent-apps "$(cat ${working_directory}/persistent-apps.plist)"