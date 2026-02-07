#!/bin/bash -euo pipefail

bash ./bats/install.sh

bats ./**/test.bats
