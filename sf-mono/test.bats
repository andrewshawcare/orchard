#!/usr/bin/env bats

@test 'SF Mono font is installed' {
  [ -f "${HOME}/Library/Fonts/SFMono-Regular.otf" ]
}
