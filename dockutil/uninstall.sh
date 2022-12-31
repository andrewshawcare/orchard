#!/bin/bash -e
pkgutil --only-files --files dockutil.cli.tool | xargs -n 1 -I {} sudo rm /{}