#!/usr/bin/env bash
set -e

PWD=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
application_list=()
# shellcheck source=./
source "${PWD}/application-list.bash"

for application in "${application_list[@]}"; do
  application_id="$(mas search ${application} | grep ${application}\$ | cut -d' ' -f1)"
  if ! (mas list | grep --quiet "${application_id}") ; then
    echo "Installing ${application}…"
    mas install ${application_id}
    echo "Installation of ${application} complete."
  else
    echo "${application} already installed"
  fi
done
