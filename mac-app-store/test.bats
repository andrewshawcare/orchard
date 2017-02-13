#!/usr/bin/env bats
application_list=()
load application-list

function application_installed () {
  local application=$1

  function application_found_in_mas_list () {
    local application=$1;
    mas list | grep "^[0-9]\+ ${application} ([0-9\.]\+)$"
  }
  run application_found_in_mas_list $application

  result=$([ $status -eq 0 ] && echo "✓" || echo "✗")
  echo "${result} ${application} is installed"

  [ $status -eq 0 ]
}

@test 'mac app store applications are installed' {
  for application in "${application_list[@]}"; do
    application_installed "$application"
  done
}
