#!/bin/bash
set -e

cd ./bats && ./install.sh && cd ..
cd ./homebrew && ./install.sh && cd ..
cd ./brew-packages && ./install.sh && cd ..
cd ./homebrew-packages && ./install.sh && cd ..
cd ./atom && ./install.sh && cd ..
