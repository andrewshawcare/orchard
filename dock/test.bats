#!/usr/bin/env bats

@test 'Dock is automatically hidden and shown' {
  [ "$(defaults read com.apple.dock autohide)" = 1 ]
}

@test 'Dock only shows active apps' {
  [ "$(defaults read com.apple.dock static-only)" = 1 ]
}
