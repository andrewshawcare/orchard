#!/usr/bin/env bats

@test 'nix is installed' {
  run type nix
  [ "$status" -eq 0 ]
}
