#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ALIASES_PATH="$REPO_DIR/git/aliases.gitconfig"

echo "Unlinking git aliases from $ALIASES_PATH"
git config --global --unset include.path "$ALIASES_PATH"
echo "Done."
