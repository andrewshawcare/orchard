#!/bin/bash -euo pipefail

working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
package_list=()
# shellcheck source=/dev/null
source "${working_directory}/package-list.bash"

for package in "${package_list[@]}"; do
  if ! brew list "${package}"; then
    brew install "${package}"
  fi
done
