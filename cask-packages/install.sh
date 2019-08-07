#!/bin/bash -e

working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
package_list=()
# shellcheck source=/dev/null
source "${working_directory}/package-list.bash"

brew tap caskroom/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew update

for package in "${package_list[@]}"; do
  if ! brew cask list "${package}"; then
    brew cask install "${package}"
  fi
done
