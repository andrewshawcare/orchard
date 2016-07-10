#!/bin/bash
set -e

if ! type bats; then
  git clone https://github.com/sstephenson/bats.git
  cd bats
  sudo ./install.sh /usr/local
  cd ..
  rm -rf bats
fi
