#!/usr/bin/env bash
set -e

PWD=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
package_list=()
# shellcheck source=./
source "${PWD}/package-list.bash"

brew tap caskroom/cask
brew tap caskroom/fonts
brew update

for package in "${package_list[@]}"; do
  if ! brew cask list ${package}; then
    brew cask install ${package}
  fi
done