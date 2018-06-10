#!/usr/bin/env bats

@test 'com.apple.trackpad.scaling is set and correct type' {
  [ "$(defaults read-type -globalDomain com.apple.trackpad.scaling)" = 'Type is float' ]
}

@test 'com.apple.AppleMultitouchTrackpad Clicking is set and correct type' {
  [ "$(defaults read-type com.apple.AppleMultitouchTrackpad Clicking)" = 'Type is boolean' ]
}