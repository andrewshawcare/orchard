#!/bin/bash -e

bash ./bats/install.sh

bats ./**/test.bats
