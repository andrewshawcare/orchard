#!/usr/bin/env bats

@test "shellcheck is installed" {
  run brew list shellcheck
  [ "${status}" -eq 0 ]
}
