#!/usr/bin/env bats
package_list=()
load package-list

@test 'homebrew packages are installed' {
  for package in "${package_list[@]}"; do
    run brew cask list "${package}"
    [ "${status}" -eq 0 ]
  done
}
