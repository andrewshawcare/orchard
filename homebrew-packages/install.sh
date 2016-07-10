#!/usr/bin/env bash
set -e

package_list=(\
  1password \
  dropbox \
  google-chrome \
)

for package in ${package_list[@]}; do
  if ! brew cask list ${package}; then
    brew cask install ${package}
  fi
done
