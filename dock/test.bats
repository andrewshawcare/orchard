#!/usr/bin/env bats

@test 'Dock is automatically hidden and shown' {
  [ "$(defaults read com.apple.dock autohide)" = 1 ]
}