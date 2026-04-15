#!/bin/bash -euo pipefail

working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

install_scripts=(
  brew
  brew-packages
  cask-packages
  dockutil
  dock
  mac-app-store
  finder
  keyboard
  mouse
  trackpad
  security-and-privacy
  bats
  claude-code
)

for script in "${install_scripts[@]}"; do
  "${working_directory}/${script}/install.sh"
done

./test.sh
