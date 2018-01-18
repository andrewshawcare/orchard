#!/usr/bin/env bats
@test 'com.apple.Terminal Default Window Settings is set and correct type' {
  [ "$(defaults read-type com.apple.Terminal 'Default Window Settings')" = 'Type is string' ]
}

@test 'com.apple.Terminal Startup Window Settings is set and correct type' {
  [ "$(defaults read-type com.apple.Terminal 'Startup Window Settings')" = 'Type is string' ]
}

@test 'com.apple.Terminal Window Settings has SF Pro' {
  [ "$(defaults export com.apple.Terminal - | xmllint --xpath '/plist/dict/key[text()="Window Settings"]/following-sibling::dict/key[text()="SF Pro"]' -)" ]
}