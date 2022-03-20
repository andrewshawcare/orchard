#!/bin/bash -e

# TODO: Take file input with declarative list of packages and preferences

find . -name 'install.sh' -exec '{}' \;

./test.sh
