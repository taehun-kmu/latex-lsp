#!/usr/bin/env bash
# Shared helpers for validation/*.sh. Source, don't execute.

if [[ -n "${_VALIDATION_COMMON_SOURCED:-}" ]]; then
    return 0
fi
_VALIDATION_COMMON_SOURCED=1

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
cd "${REPO_ROOT}"

require_command() {
    local cmd="$1"
    command -v "${cmd}" &>/dev/null || {
        echo "${cmd} is required but not found on PATH" >&2
        exit 1
    }
}
