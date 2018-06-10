#!/bin/bash -e

print_usage() {
  echo "Usage: ${0} <resource-name>"
}

resource_name="${1?"$(print_usage)"}"

mkdir "$resource_name"

cat <<HEREDOC > "$resource_name/test.bats"
#!/usr/bin/env bats

@test 'Implement me!' {
  [ 0 -eq 1 ]
}
HEREDOC

echo '#!/bin/bash -e' > "$resource_name/install.sh"

chmod +x "$resource_name/install.sh"