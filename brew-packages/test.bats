#!/usr/bin/env bats
@test 'shellcheck is installed' {
  run brew list shellcheck
  [ "${status}" -eq 0 ]
}

@test 'node is installed' {
  run brew list node
  [ "${status}" -eq 0 ]
}
