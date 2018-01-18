#!/usr/bin/env bash
set -e

package_list=()
# shellcheck source=./
source "$(dirname "$0")/package-list.bash"

for package in "${package_list[@]}"; do
  if ! brew list "${package}"; then
    brew install "${package}"
  fi
done
