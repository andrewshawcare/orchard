#!/usr/bin/env bats

@test "BreakTime has a 27 minute time between breaks" {
  [ "$(defaults read com.excitedpixel.breaktime minutes)" = 1620 ]
}

@test "BreakTime has a 3 minute length of break" {
  [ "$(defaults read com.excitedpixel.breaktime length)" = 180 ]
}

@test "BreakTime enforces breaks" {
  [ "$(defaults read com.excitedpixel.breaktime enforceBreak)" = 1 ]
}

@test "BreakTime starts at login" {
  [ "$(defaults read com.excitedpixel.breaktime runOnLogin)" = 1 ]
}

@test "BreakTime does not show a dock icon" {
  [ "$(defaults read com.excitedpixel.breaktime displayInDock)" = 0 ]
}

@test "BreakTime does not use magic rescheduling" {
  [ "$(defaults read com.excitedpixel.breaktime magicReschedule)" = 0 ]
}