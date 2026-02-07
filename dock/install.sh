#!/bin/bash -euo pipefail

working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

defaults write com.apple.dock autohide -boolean true
defaults write com.apple.dock show-recents -boolean false

if ! which dockutil; then
    pushd ../dockutil
    ./install.sh
    popd
fi

default_dock_applications_to_remove=(\
    'Safari' \
    'Messages' \
    'Maps' \
    'Photos' \
    'FaceTime' \
    'Phone' \
    'Contacts' \
    'Reminders' \
    'Notes' \
    'TV' \
    'Music' \
    'Games' \
    'App Store' \
    'iPhone Mirroring' \
    'System Settings'
)

for application in "${default_dock_applications_to_remove[@]}"; do
    if dockutil --find "${application}"; then
        echo "Removing ${application} from the dock..."
        dockutil --remove "${application}" --no-restart
        echo "${application} removed from the dock."
    fi
done

# Ensure Dock is restarted so changes take effect
killall Dock
