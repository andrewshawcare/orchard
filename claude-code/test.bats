#!/usr/bin/env bats

@test 'Claude Code is installed' {
  run type claude
  [ "$status" -eq 0 ]
}
