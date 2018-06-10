#!/usr/bin/env bats

@test 'com.apple.mouse.scaling is set and correct type' {
  [ "$(defaults read-type -globalDomain com.apple.mouse.scaling)" = 'Type is float' ]
}
