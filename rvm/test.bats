#!/usr/bin/env bats
@test 'rvm is installed' {
  run source ~/.rvm/scripts/rvm && type rvm
  [ "$status" -eq 0 ]
}
