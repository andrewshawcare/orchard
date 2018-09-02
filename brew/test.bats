#!/usr/bin/env bats

@test 'Homebrew is installed' {
  run type brew
  [ "$status" -eq 0 ]
}

@test 'Homebrew analytics are disabled' {
  run brew analytics
  [ "${output}" = 'Analytics is disabled.' ]
}
