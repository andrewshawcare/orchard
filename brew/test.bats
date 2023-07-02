#!/usr/bin/env bats

@test 'Homebrew is installed' {
  run type brew
  [ "$status" -eq 0 ]
}

@test 'InfluxDB analytics are disabled' {
  run brew analytics
  echo "${output}"
  [[ "${output}" =~ 'InfluxDB analytics are disabled.' ]]
}

@test 'Google Analytics were destroyed.' {
  run brew analytics
  echo "${output}"
  [[ "${output}" =~ 'Google Analytics were destroyed.' ]]
}
