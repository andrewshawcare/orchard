#!/usr/bin/env bats
@test 'homebrew is installed' {
  run type brew
  [ "$status" -eq 0 ]
}
