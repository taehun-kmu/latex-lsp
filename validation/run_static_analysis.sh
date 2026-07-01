#!/usr/bin/env bash
set -euo pipefail

source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/common.sh"

require_command npx

if [[ ! -f LICENSE ]]; then
    echo "LICENSE file is missing" >&2
    exit 1
fi
echo "LICENSE exists"

npx --yes markdownlint-cli2 --config .markdownlint.json README.md
