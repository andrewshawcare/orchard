#!/usr/bin/env bats

@test 'com.apple.dock autohide is set and correct type' {
  [ "$(defaults read-type com.apple.dock autohide)" = 'Type is boolean' ]
}

@test 'com.apple.dock persistent-apps is set and correct type' {
  [ "$(defaults read-type com.apple.dock persistent-apps)" = 'Type is array' ]
}
