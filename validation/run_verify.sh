#!/usr/bin/env bash
set -euo pipefail

source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/common.sh"

require_command jq

readonly plugin=".claude-plugin/plugin.json"

for field in name version description author lspServers; do
    jq -e "has(\"${field}\")" "${plugin}" > /dev/null || {
        echo "missing required field: ${field}" >&2
        exit 1
    }
done
echo "required fields present"

servers_kind=$(jq -r '.lspServers | type' "${plugin}")
if [[ "${servers_kind}" == "string" ]]; then
    lsp_path=$(jq -r '.lspServers' "${plugin}")
    servers_json=$(jq -c '.' "${lsp_path}")
else
    servers_json=$(jq -c '.lspServers' "${plugin}")
fi

echo "${servers_json}" | jq -e 'length > 0' > /dev/null || {
    echo "lspServers must not be empty" >&2
    exit 1
}

echo "${servers_json}" | jq -r 'keys[]' | while read -r server_name; do
    command_value=$(echo "${servers_json}" | jq -r --arg s "${server_name}" '.[$s].command // empty')
    [[ -n "${command_value}" ]] || { echo "${server_name}: command must not be empty" >&2; exit 1; }

    echo "${servers_json}" | jq -e --arg s "${server_name}" '.[$s] | has("args")' > /dev/null || {
        echo "${server_name}: args is required" >&2
        exit 1
    }

    echo "${servers_json}" | jq -e --arg s "${server_name}" '.[$s].extensionToLanguage // {} | length > 0' > /dev/null || {
        echo "${server_name}: extensionToLanguage must not be empty" >&2
        exit 1
    }
done
echo "lspServers configuration is valid"
