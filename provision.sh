#!/bin/bash
set -e

./bats/install.sh
./homebrew/install.sh
./homebrew-packages/install.sh
