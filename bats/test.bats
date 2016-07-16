#!/usr/bin/env bats
@test 'bats is installed' {
  run type bats
  [ "$status" -eq 0 ]
}
