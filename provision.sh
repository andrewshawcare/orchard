#!/bin/bash
set -e

./bats/install.sh
./homebrew/install.sh
./brew-packages/install.sh
./homebrew-packages/install.sh
./atom/install.sh
