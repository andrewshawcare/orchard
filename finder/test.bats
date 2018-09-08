#!/usr/bin/env bats

@test 'Finder windows show the $HOME directory' {
  [ "$(defaults read com.apple.finder NewWindowTarget)" = 'PfHm' ]
}
