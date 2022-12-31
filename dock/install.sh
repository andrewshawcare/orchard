#!/bin/bash -e

working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

defaults write com.apple.dock autohide -boolean true
defaults write com.apple.dock show-recents -boolean false

if ! which dockutil; then
    pushd ../dockutil
    ./install.sh
    popd
fi

default_dock_applications_to_remove=(\
    'Messages' \
    'Maps' \
    'Photos' \
    'FaceTime' \
    'Freeform' \
    'Contacts' \
    'Reminders' \
    'Notes' \
    'TV' \
    'Music' \
    'Podcasts' \
    'News' \
    'App Store' \
    'System Settings' \
    'Safari'
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