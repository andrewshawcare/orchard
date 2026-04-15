#!/bin/bash -euo pipefail

if [ -x "$(command -v claude)" ]; then
  exit 0
fi

curl -fsSL https://claude.ai/install.sh | bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc