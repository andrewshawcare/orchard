#!/bin/bash -e

if type nix; then
  exit 0
fi

sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)