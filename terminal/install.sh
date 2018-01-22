#!/bin/sh -e
defaults write com.apple.Terminal 'Window Settings' -dict-add 'SF Pro' -dict "$(cat sf-pro.plist)"
defaults write com.apple.Terminal 'Default Window Settings' 'SF Pro'
defaults write com.apple.Terminal 'Startup Window Settings' 'SF Pro'
