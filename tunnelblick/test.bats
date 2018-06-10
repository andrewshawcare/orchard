#!/usr/bin/env bats

@test 'Tunnelblick TCP configurations are present' {
  run test -d "${HOME}/ovpn_tcp"
  [ "$status" -eq 0 ]
}

@test 'Tunnelblick UDP configurations are present' {
  run test -d "${HOME}/ovpn_udp"
  [ "$status" -eq 0 ]
}
