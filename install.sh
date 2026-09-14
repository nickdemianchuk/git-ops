#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ALIASES_PATH="$REPO_DIR/git/aliases.gitconfig"

echo "Linking git aliases from $ALIASES_PATH"
git config --global include.path "$ALIASES_PATH"
echo "Done. Run 'git s' to verify."
