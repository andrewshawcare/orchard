#!/usr/bin/env bats

@test '1password is installed' {
  run brew cask list 1password
  [ "$status" -eq 0 ]
}

@test 'dropbox is installed' {
  run brew cask list dropbox
  [ "$status" -eq 0 ]
}
