#!/bin/bash -euo pipefail

working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
font_list=()
# shellcheck source=/dev/null
source "${working_directory}/font-list.bash"

brew update

for font in "${font_list[@]:+${font_list[@]}}"; do
  if ! brew list --cask "${font}"; then
    brew install --cask "${font}"
  fi
done