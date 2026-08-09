#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
SOURCE_DIR="$ROOT_DIR/adapters/claude"
TARGET_PATH="$(pwd)"
GLOBAL=false
FORCE=false
DRY_RUN=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    --target) TARGET_PATH="$2"; shift 2 ;;
    --global) GLOBAL=true; shift ;;
    --force) FORCE=true; shift ;;
    --dry-run) DRY_RUN=true; shift ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

convert_skill() {
  local src="$1" skill="$2"
  python3 - "$src" "$skill" <<'PY'
from pathlib import Path
import re, sys
src = Path(sys.argv[1]); skill = sys.argv[2]
raw = src.read_text(encoding='utf-8-sig')
desc = f'Book Kit command /{skill}'
body = raw
m = re.match(r'\A---\s*\r?\n(?P<fm>.*?)\r?\n---\s*\r?\n(?P<body>.*)\Z', raw, re.S)
if m:
    body = m.group('body')
    d = re.search(r'(?m)^description:\s*(?P<d>.+?)\s*$', m.group('fm'))
    if d:
        desc = d.group('d').strip().strip('"').strip("'")
safe = desc.replace('\\','\\\\').replace('"','\\"')
print('---')
print(f'name: {skill}')
print(f'description: "{safe}"')
print('argument-hint: "[arguments]"')
print('user-invocable: true')
print('---\n')
print(body, end='' if body.endswith('\n') else '\n')
PY
}

install_set() {
  local root="$1"
  shopt -s nullglob
  for src in "$SOURCE_DIR"/bookkit.*.md; do
    local file skill dir dst
    file="$(basename "$src")"
    skill="${file%.md}"
    dir="$root/$skill"
    dst="$dir/SKILL.md"
    if [[ "$DRY_RUN" == true ]]; then echo "  [dry-run] $src -> $dst"; continue; fi
    if [[ -f "$dst" && "$FORCE" == false ]]; then echo "  [skip] $dst"; continue; fi
    mkdir -p "$dir"
    convert_skill "$src" "$skill" > "$dst"
    echo "  [ok] $dst"
  done
}

PROJECT_ROOT="$TARGET_PATH/.openclaude/skills"
echo "Installing Book Kit OpenClaude skills to $PROJECT_ROOT"
install_set "$PROJECT_ROOT"

if [[ "$GLOBAL" == true ]]; then
  CONFIG_ROOT="${OPENCLAUDE_CONFIG_DIR:-$HOME/.openclaude}"
  GLOBAL_ROOT="$CONFIG_ROOT/skills"
  echo "Installing global Book Kit OpenClaude skills to $GLOBAL_ROOT"
  install_set "$GLOBAL_ROOT"
fi

echo "Book Kit OpenClaude skills installed. Invoke with /bookkit.{command}."
