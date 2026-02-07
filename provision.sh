#!/bin/bash -euo pipefail

# TODO: Take file input with declarative list of packages and preferences

find . -name 'install.sh' -exec '{}' \;

./test.sh
