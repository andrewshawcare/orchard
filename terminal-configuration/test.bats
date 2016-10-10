#!/usr/bin/env bats
@test 'terminal is configured' {
  run defaults read com.apple.Terminal 'Default Window Settings'
  [ "$output" = "Pro" ]
}
