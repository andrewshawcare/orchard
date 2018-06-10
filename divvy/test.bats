#!/usr/bin/env bats

@test 'globalHotkey is set and correct type' {
  [ "$(defaults read-type com.mizage.Divvy globalHotkey)" = 'Type is dictionary' ]
}

@test 'shortcuts is set and correct type' {
  [ "$(defaults read-type com.mizage.Divvy shortcuts)" = 'Type is data' ]
}

@test 'showMenuIcon is set and correct type' {
  [ "$(defaults read-type com.mizage.Divvy showMenuIcon)" = 'Type is boolean' ]
}

@test 'useGlobalHotkey is set and correct type' {
  [ "$(defaults read-type com.mizage.Divvy useGlobalHotkey)" = 'Type is boolean' ]
}

@test 'useMonitorCycling is set and correct type' {
  [ "$(defaults read-type com.mizage.Divvy useMonitorCycling)" = 'Type is boolean' ]
}
