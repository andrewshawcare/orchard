#!/bin/bash -e

if ! type bats; then
  tmp_dir=$(mktemp -d -t bats)
  git clone https://github.com/sstephenson/bats.git "${tmp_dir}"
  sudo "${tmp_dir}/install.sh" /usr/local
  rm -rf "${tmp_dir}"
fi
