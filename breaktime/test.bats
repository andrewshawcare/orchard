#!/usr/bin/env bats

@test 'com.excitedpixel.breaktime displayInDock is set and correct type' {
  [ "$(defaults read-type com.excitedpixel.breaktime displayInDock)" = 'Type is boolean' ]
}

@test 'com.excitedpixel.breaktime enforceBreak is set and correct type' {
  [ "$(defaults read-type com.excitedpixel.breaktime enforceBreak)" = 'Type is boolean' ]
}

@test 'com.excitedpixel.breaktime length is set and correct type' {
  [ "$(defaults read-type com.excitedpixel.breaktime length)" = 'Type is integer' ]
}

@test 'com.excitedpixel.breaktime magicReschedule is set and correct type' {
  [ "$(defaults read-type com.excitedpixel.breaktime magicReschedule)" = 'Type is boolean' ]
}

@test 'com.excitedpixel.breaktime minutes is set and correct type' {
  [ "$(defaults read-type com.excitedpixel.breaktime minutes)" = 'Type is integer' ]
}

@test 'com.excitedpixel.breaktime runOnLogin is set and correct type' {
  [ "$(defaults read-type com.excitedpixel.breaktime runOnLogin)" = 'Type is boolean' ]
}