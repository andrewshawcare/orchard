#!/usr/bin/env bats
@test 'com.apple.finder NewWindowTarget is set and correct type' {
  [ "$(defaults read-type com.apple.finder NewWindowTarget)" = 'Type is string' ]
}
