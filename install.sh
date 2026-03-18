#!/usr/bin/env bash
set -euo pipefail

TARGET_ROOT="${1:-$HOME/.gemini}"
CMD_DIR="$TARGET_ROOT/commands/pmx"
SKILL_DIR="$TARGET_ROOT/skills"

mkdir -p "$CMD_DIR"
mkdir -p "$SKILL_DIR"

cp -f commands/pmx/*.toml "$CMD_DIR/"

for d in skills/*; do
  name="$(basename "$d")"
  rm -rf "$SKILL_DIR/$name"
  cp -R "$d" "$SKILL_DIR/$name"
done

echo "Installed pmx-skills into $TARGET_ROOT"
echo "Run /commands reload and /skills reload inside Gemini CLI."
