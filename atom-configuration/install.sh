#!/usr/bin/env bash
if [ ! -d ~/.atom ]; then
  git clone https://github.com/andrewshawcare/atom-configuration.git ~/.atom
fi

pushd ~/.atom
  git clean --force -d
popd
