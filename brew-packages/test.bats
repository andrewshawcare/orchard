#!/usr/bin/env bats

package_list=()
load package-list

function assert_homebrew_package_installed () {
  local package=$1

  run brew list $package

  mark=$([ $status -eq 0 ] && echo '✓' || echo '✗')
  echo "${mark} ${package} is installed"

  [ $status -eq 0 ]
}

@test 'Homebrew packages are installed' {
  for package in "${package_list[@]}"; do
    assert_homebrew_package_installed $package
  done
}
