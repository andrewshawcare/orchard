#!/usr/bin/env bats
package_list=()
load package-list

function package_installed () {
  local package=$1
  run brew cask list $package
  [ $status -eq 0 ]
}

@test 'homebrew packages are installed' {
  for package in "${package_list[@]}"; do
    package_installed $package
  done
}
