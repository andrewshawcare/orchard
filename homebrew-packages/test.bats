#!/usr/bin/env bats

@test 'dropbox is installed' {
  run brew cask list dropbox
  [ "$status" -eq 0 ]
}
