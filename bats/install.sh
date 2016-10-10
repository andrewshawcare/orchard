#!/bin/bash
set -e

if ! type bats; then
  mkdir -p /tmp/bats
  git clone https://github.com/sstephenson/bats.git /tmp/bats
  sudo /tmp/bats/install.sh /usr/local
  rm -rf /tmp/bats
fi
