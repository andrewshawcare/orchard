#!/usr/bin/env bash
set -e

package_list=()
# shellcheck source=./
source "$(dirname "$0")/package-list.bash"

brew tap caskroom/cask
brew tap caskroom/fonts
brew update

for package in "${package_list[@]}"; do
  if ! brew cask list ${package}; then
    brew cask install ${package}
  fi
done
