#!/bin/bash -e

find . -name 'install.sh' -exec '{}' \;

./test.sh
