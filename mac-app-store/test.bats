#!/usr/bin/env bats

application_list=()
load application-list

function assert_mas_application_installed () {
  local application=$1

  run bash -c "mas list | tr -s ' ' | cut -d ' ' -f2 | grep '^${application}\$'"

  mark=$([ $status -eq 0 ] && echo "✓" || echo "✗")
  echo "${mark} ${application} is installed"

  [ $status -eq 0 ]
}

@test 'mac app store applications are installed' {
  for application in "${application_list[@]}"; do
    assert_mas_application_installed $application
  done
}
