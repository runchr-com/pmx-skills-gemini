#!/usr/bin/env bash
set -euo pipefail

TARGET_ROOT="${1:-$HOME/.gemini}"
rm -rf "$TARGET_ROOT/commands/pmx"

for d in skills/*; do
  name="$(basename "$d")"
  rm -rf "$TARGET_ROOT/skills/$name"
done

echo "Removed pmx-skills from $TARGET_ROOT"
