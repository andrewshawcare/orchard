#!/bin/bash -euo pipefail
version='3.0.2'
package="dockutil-${version}.pkg"

if type dockutil; then
  exit 0
fi

curl \
  --location \
  --remote-name \
  --silent \
  "https://github.com/kcrawford/dockutil/releases/download/${version}/${package}"

sudo installer -pkg "${package}" -target /

rm "${package}"