#!/bin/bash -e

install_homebrew_package() {
    package_name="${1:?'package_name is a required parameter'}"

    # TODO: Ensure brew is installed

    
}

install mac_app_store_package() {
    package_name="${1:?'package_name is a required parameter'}"

    # TODO: Ensure mas is installed


}

add_app_to_dock() {
    app_location="${1:?'app_location is a required parameter'}"

    # TODO: Ensure dockutil is installed

    dockutil --add "${app_location}"
}