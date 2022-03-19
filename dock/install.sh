#!/bin/bash -e

working_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

defaults write com.apple.dock autohide -boolean true
killall Dock

if ! which dockutil; then
    brew install dockutil
fi

default_dock_applications_to_remove=(\
    'Messages' \
    'Maps' \
    'Photos' \
    'FaceTime' \
    'Contacts' \
    'Reminders' \
    'Notes' \
    'TV' \
    'Music' \
    'Podcasts' \
    'News' \
    'App Store' \
    'System Preferences'
)
for application in "${default_dock_applications_to_remove[@]}"; do
    if dockutil --list "${application}"; then
        echo "Removing ${application} from the dock..."
        dockutil --remove --no-restart "${application}"
        echo "${application} removed from the dock."
    fi
done