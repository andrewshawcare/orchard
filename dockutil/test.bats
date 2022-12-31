#!/usr/bin/env bats

@test 'dockutil is installed' {
  run type dockutil
  [ "$status" -eq 0 ]
}
