#!/bin/bash -e
working_directory="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

defaults write come.apple.terminal 'Window Settings' -dict-add 'SF Pro' "$(cat ${working_directory}/SF Pro.terminal)"
defaults write com.apple.Terminal 'Default Window Settings' 'SF Pro'
defaults write com.apple.Terminal 'Startup Window Settings' 'SF Pro'
