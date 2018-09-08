#!/usr/bin/env bats

@test 'Dock is automatically hidden and shown' {
  [ "$(defaults read com.apple.dock autohide)" = 1 ]
}

@test 'Dock has persistent apps set' {
  [ "$(defaults read-type com.apple.dock persistent-apps)" = 'Type is array' ]
}
