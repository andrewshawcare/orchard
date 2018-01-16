#!/bin/sh -e
cloud_user_packages_path="${HOME}/Documents/Sublime Text 3/Packages/User"
local_user_packages_path="${HOME}/Library/Application Support/Sublime Text 3/Packages/User"
rm -r "${local_user_packages_path}"
ln -s "${cloud_user_packages_path}" "${local_user_packages_path}"