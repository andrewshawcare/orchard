#!/usr/bin/env bats

package_list=()
load package-list

function assert_homebrew_cask_package_installed () {
  local package=$1

  run brew list --cask $package

  mark=$([ $status -eq 0 ] && echo "✓" || echo "✗")
  echo "${mark} ${package} is installed"

  [ $status -eq 0 ]
}

@test 'Homebrew Cask packages are installed' {
  for package in "${package_list[@]}"; do
    assert_homebrew_cask_package_installed $package
  done
}
