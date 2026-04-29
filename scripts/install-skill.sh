#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

usage() {
  cat <<USAGE
Usage: $0 [all|skill-name ...]

Installs canonical skills from $ROOT/skills into each local agent skill root as symlinks.
Default: all
USAGE
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ $# -eq 0 || "${1:-}" == "all" ]]; then
  SKILLS=()
  while IFS= read -r skill; do
    SKILLS+=("$skill")
  done < <(find "$ROOT/skills" -mindepth 1 -maxdepth 1 -type d -exec basename {} \; | sort)
else
  SKILLS=("$@")
fi

TARGET_ROOTS=(
  "/Users/bobbc/.codex/skills"
  "/Users/bobbc/.claude/skills"
  "/Users/bobbc/.gemini/skills"
  "/Users/bobbc/.openclaw/skills"
  "/Users/bobbc/.hermes/skills"
)

stamp="$(date +%Y%m%d-%H%M%S)"
for skill_name in "${SKILLS[@]}"; do
  source="$ROOT/skills/$skill_name"
  if [[ ! -f "$source/SKILL.md" ]]; then
    echo "ERROR: skill not found: $source" >&2
    exit 1
  fi

  for root in "${TARGET_ROOTS[@]}"; do
    mkdir -p "$root"
    target="$root/$skill_name"

    if [[ -L "$target" ]]; then
      current="$(readlink "$target")"
      if [[ "$current" == "$source" ]]; then
        echo "OK existing symlink: $target -> $source"
        continue
      fi
      rm "$target"
    elif [[ -e "$target" ]]; then
      backup="$target.backup.$stamp"
      mv "$target" "$backup"
      echo "Backed up existing install: $backup"
    fi

    ln -s "$source" "$target"
    echo "Linked: $target -> $source"
  done
done
