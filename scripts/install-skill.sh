#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="${1:-elon-algorithm}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SOURCE="$ROOT/skills/$SKILL_NAME"

if [[ ! -f "$SOURCE/SKILL.md" ]]; then
  echo "ERROR: skill not found: $SOURCE" >&2
  exit 1
fi

TARGET_ROOTS=(
  "/Users/bobbc/.codex/skills"
  "/Users/bobbc/.claude/skills"
  "/Users/bobbc/.gemini/skills"
  "/Users/bobbc/.openclaw/skills"
  "/Users/bobbc/.hermes/skills"
)

stamp="$(date +%Y%m%d-%H%M%S)"
for root in "${TARGET_ROOTS[@]}"; do
  mkdir -p "$root"
  target="$root/$SKILL_NAME"

  if [[ -L "$target" ]]; then
    current="$(readlink "$target")"
    if [[ "$current" == "$SOURCE" ]]; then
      echo "OK existing symlink: $target -> $SOURCE"
      continue
    fi
    rm "$target"
  elif [[ -e "$target" ]]; then
    backup="$target.backup.$stamp"
    mv "$target" "$backup"
    echo "Backed up existing install: $backup"
  fi

  ln -s "$SOURCE" "$target"
  echo "Linked: $target -> $SOURCE"
done
