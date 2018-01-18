#!/bin/bash
set -e

if ! type bats; then
  TMP_DIR=$(mktemp -d -t bats)
  git clone https://github.com/sstephenson/bats.git "${TMP_DIR}"
  sudo "${TMP_DIR}/install.sh" /usr/local
  rm -rf "${TMP_DIR}"
fi
