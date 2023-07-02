#!/bin/bash -e

working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
package_list=()
# shellcheck source=/dev/null
source "${working_directory}/package-list.bash"

brew tap homebrew/cask-fonts
brew update

for package in "${package_list[@]}"; do
  if ! brew list --cask "${package}"; then
    brew install --cask "${package}"
  fi
done
