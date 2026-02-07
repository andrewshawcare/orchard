#!/bin/bash -euo pipefail

function for_each_domain () {
  local expression=$1
  for domain in $(defaults domains | sed 's/,/ /g')
  do
  	echo "With domain ${domain}, evaluating: ${expression}"
    eval "$expression"
  done
}

function write_domain_values_to_xml_files_in_current_directory () {
  # shellcheck disable=SC2016
  for_each_domain 'defaults export $domain - > $domain.xml'
  defaults export -globalDomain - > globalDomain.xml
}

function read_domain_values_from_xml_files_in_current_directory () {
  # shellcheck disable=SC2016
  for_each_domain 'defaults import $domain - < $domain.xml'
  defaults import -globalDomain - < globalDomain.xml
}
