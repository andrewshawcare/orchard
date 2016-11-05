#!/bin/bash
set -e

PWD=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

defaults import com.apple.Terminal ${PWD}/com.apple.Terminal.xml.plist
