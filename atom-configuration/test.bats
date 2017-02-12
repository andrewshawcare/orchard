#!/usr/bin/env bats
@test 'atom configuration is cloned' {
  [ -d ~/.atom/.git ]
}

@test 'atom configuration is up-to-date' {
  cd ~/.atom
  run git status
  [ "${lines[0]}" = 'On branch master' ]
  [ "${lines[1]}" = 'Your branch is up-to-date with '"'"'origin/master'"'"'.' ]
  [ "${lines[2]}" = 'nothing to commit, working tree clean' ]
}
