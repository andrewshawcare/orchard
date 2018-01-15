#!/bin/sh
temp_dir="$(mktemp -d)"
config_file="ovpn_tblk.zip"
config_path="${temp_dir}/${config_file}"
config_uri="https://downloads-legacy.nordvpn.com/configs/archives/servers/${config_file}"

curl "${config_uri}" --output "${config_path}"

unzip "${config_path}" -d "${HOME}"

rm -r "${temp_dir}"