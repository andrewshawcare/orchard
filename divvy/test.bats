#!/usr/bin/env bats

@test 'Divvy has a global shortcut set to Option-Shift-Space' {
  key_code_space=49
  modifier_command_shift=768
  global_hotkey_struct="$(cat <<-EOF
{
    keyCode = ${key_code_space};
    modifiers = ${modifier_command_shift};
}
EOF
)"
  [ "$(defaults read com.mizage.Divvy globalHotkey)" = "${global_hotkey_struct}" ]
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
