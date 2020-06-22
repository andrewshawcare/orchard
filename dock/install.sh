#!/bin/bash -e

working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

defaults write com.apple.dock autohide -boolean true
killall Dock