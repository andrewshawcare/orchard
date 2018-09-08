#!/bin/bash -e

working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
application_list=()
# shellcheck source=/dev/null
source "${working_directory}/application-list.bash"

for application in "${application_list[@]}"; do
  application_id="$(\
    mas search "${application}" | \
    grep -E "^[[:digit:]]+[[:space:]]${application}[[:space:]]\\([[[:digit:]|\\.]+\\)$" | \
    cut -d' ' -f1 \
  )"

  if ! (mas list | grep --quiet "${application_id}") ; then
    echo "Installing ${application}…"
    mas install "${application_id}"
    echo "Installation of ${application} complete."
  else
    echo "${application} already installed"
  fi
done
