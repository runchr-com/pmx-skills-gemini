#!/usr/bin/env bash
set -euo pipefail

PACKAGE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GEMINI_HOME="${HOME}/.gemini"
SKILLS_DIR="${GEMINI_HOME}/skills"
COMMANDS_DIR="${GEMINI_HOME}/commands"

echo ""
echo "Removing pm-skills-gemini from global Gemini directory..."
echo ""

removed_any=false

# Remove commands shipped by this repo
if [[ -d "${PACKAGE_ROOT}/commands" ]]; then
  while IFS= read -r -d '' cmd_file; do
    target="${COMMANDS_DIR}/$(basename "${cmd_file}")"
    if [[ -f "${target}" ]]; then
      rm -f "${target}"
      echo "Removed command: ${target}"
      removed_any=true
    fi
  done < <(find "${PACKAGE_ROOT}/commands" -type f -name '*.toml' -print0)
fi

# Remove skills based on local repo skills directory first
if [[ -d "${PACKAGE_ROOT}/skills" ]]; then
  while IFS= read -r -d '' skill_dir; do
    skill_name="$(basename "${skill_dir}")"
    target="${SKILLS_DIR}/${skill_name}"
    if [[ -d "${target}" ]]; then
      rm -rf "${target}"
      echo "Removed skill: ${target}"
      removed_any=true
    fi
  done < <(find "${PACKAGE_ROOT}/skills" -mindepth 1 -maxdepth 1 -type d -print0)
fi

# Fallback: remove skills listed in manifest if present
if [[ -f "${PACKAGE_ROOT}/pm-skills-manifest.json" ]] && command -v python3 >/dev/null 2>&1; then
  python3 - "${PACKAGE_ROOT}/pm-skills-manifest.json" "${SKILLS_DIR}" <<'PY'
import json
import os
import shutil
import sys

manifest_path = sys.argv[1]
skills_dir = sys.argv[2]

try:
    with open(manifest_path, "r", encoding="utf-8") as f:
        data = json.load(f)
except Exception as e:
    print(f"Warning: could not read manifest: {e}")
    sys.exit(0)

skills = data.get("skills", [])
for item in skills:
    name = None

    if isinstance(item, str):
        name = item
    elif isinstance(item, dict):
        name = item.get("name") or item.get("id") or item.get("slug")

    if not name:
        continue

    path = os.path.join(skills_dir, name)
    if os.path.isdir(path):
        shutil.rmtree(path)
        print(f"Removed skill from manifest: {path}")
PY
fi

if [[ "${removed_any}" == false ]]; then
  echo "No matching commands or skills were found to remove."
fi

echo ""
echo "Uninstall complete."
