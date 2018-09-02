#!/usr/bin/env bats
@test 'Divvy is not shown in the menu bar' {
  [ "$(defaults read com.mizage.Divvy showMenuIcon)" = 0 ]
}

@test 'Divvy will cycle between screens when using shortcuts' {
  [ "$(defaults read com.mizage.Divvy useMonitorCycling)" = 1 ]
}

@test 'Divvy uses a global hotkey' {
  [ "$(defaults read-type com.mizage.Divvy useGlobalHotkey)" = 'Type is boolean' ]
}

@test 'Divvy has its global hotkey set to Option-Shift-Space' {
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

@test 'Divvy shortcuts are setup' {
  [ "$(defaults read-type com.mizage.Divvy shortcuts)" = 'Type is data' ]
}
