#!/usr/bin/env bash
set -euo pipefail

PACKAGE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GEMINI_HOME="${HOME}/.gemini"
SKILLS_DIR="${GEMINI_HOME}/skills"
COMMANDS_DIR="${GEMINI_HOME}/commands"
INSTALLED_SKILLS_FILE="${PACKAGE_ROOT}/.installed-skills.txt"

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

# Remove installed skills from recorded list
if [[ -f "${INSTALLED_SKILLS_FILE}" ]]; then
  while IFS= read -r skill_name; do
    [[ -z "${skill_name}" ]] && continue
    target="${SKILLS_DIR}/${skill_name}"
    if [[ -d "${target}" ]]; then
      rm -rf "${target}"
      echo "Removed skill: ${target}"
      removed_any=true
    fi
  done < "${INSTALLED_SKILLS_FILE}"

  rm -f "${INSTALLED_SKILLS_FILE}"
fi

if [[ "${removed_any}" == false ]]; then
  echo "No matching commands or skills were found to remove."
fi

echo ""
echo "Uninstall complete."