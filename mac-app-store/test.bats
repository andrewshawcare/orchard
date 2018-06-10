#!/usr/bin/env bats

application_list=()
load application-list

function application_installed () {
  local application=$1
  mas list | cut -d' ' -f2 | grep "^${application}\$"
}

@test 'mac app store applications are installed' {
  for application in "${application_list[@]}"; do
    run application_installed $application

    result=$([ $status -eq 0 ] && echo "✓" || echo "✗")
    echo "${result} ${application} is installed"

    [ $status -eq 0 ]
  done
}
