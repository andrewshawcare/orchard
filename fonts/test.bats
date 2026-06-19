#!/usr/bin/env bats

font_list=()
load font-list

function assert_homebrew_cask_package_installed () {
  local package=$1

  run brew list --cask $package

  mark=$([ $status -eq 0 ] && echo "✓" || echo "✗")
  echo "${mark} ${package} is installed"

  [ $status -eq 0 ]
}

@test 'Fonts are installed' {
  for font in "${font_list[@]}"; do
    assert_homebrew_cask_package_installed $font
  done
}
