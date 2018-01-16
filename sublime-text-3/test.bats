#!/usr/bin/env bats
@test 'Packages User folder exists as symbolic link' {
  [ -L "${HOME}/Library/Application Support/Sublime Text 3/Packages/User" ]
}
