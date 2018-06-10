#!/usr/bin/env bats

package_list=()
load package-list

function package_installed () {
  local package=$1

  run brew list $package

  result=$([ $status -eq 0 ] && echo "✓" || echo "✗")
  echo "${result} ${package} is installed"

  [ $status -eq 0 ]
}

@test 'brew packages are installed' {
  for package in "${package_list[@]}"; do
    package_installed $package
  done
}
