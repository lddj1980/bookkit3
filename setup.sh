#!/usr/bin/env bash
# Book Kit v3 — setup.sh (Unix/macOS/WSL)
# Uso: bash setup.sh [--tool claude] [--all] [--target /caminho] [--global]

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$(pwd)"
TOOLS=()
INSTALL_ALL=0
GLOBAL=false

while [[ $# -gt 0 ]]; do
  case $1 in
    --tool)   TOOLS+=("$2"); shift 2 ;;
    --target) TARGET_DIR="$2"; shift 2 ;;
    --all)    INSTALL_ALL=1; shift ;;
    --global) GLOBAL=true; shift ;;
    --help|-h)
      echo ""
      echo "  Book Kit v3 — setup.sh"
      echo "  ========================"
      echo ""
      echo "  Uso:"
      echo "    bash setup.sh --tool <key>"
      echo "    bash setup.sh --all"
      echo "    bash setup.sh --all --target ~/projetos/meu-livro"
      echo "    bash setup.sh --tool openclaude --global"
      echo ""
      echo "  Ferramentas:"
      echo "    claude      .claude/commands/                    /bookkit.brief"
      echo "    openclaude  .openclaude/skills/bookkit.*/SKILL.md /bookkit.brief [native]"
      echo "    codex       .agents/skills/bookkit/              \$bookkit-brief"
      echo "    kimi        .kimi/commands/                       /bookkit.brief"
      echo "    opencode    .opencode/commands/                   /bookkit.brief"
      echo "    agy         .agy/skills/bookkit/                  /bookkit.brief"
      echo "    cursor      .cursor/rules/                        @bookkit.brief"
      echo "    windsurf    .windsurf/rules/                      @bookkit.brief"
      echo "    copilot     .github/                              /bookkit-brief"
      echo "    gemini      .gemini/commands/                     /bookkit.brief"
      exit 0 ;;
    *) echo "  Argumento desconhecido: $1"; exit 1 ;;
  esac
done

if [[ ${#TOOLS[@]} -eq 0 && "$INSTALL_ALL" -eq 0 ]]; then
  echo ""
  echo "  Book Kit v3 — Qual ferramenta você está usando?"
  echo "  ================================================="
  echo ""
  echo "  1) claude      (.claude/commands/)"
  echo "  2) openclaude  (.openclaude/skills/<command>/SKILL.md) [native]"
  echo "  3) codex       (.agents/skills/bookkit/)"
  echo "  4) kimi        (.kimi/commands/)"
  echo "  5) opencode    (.opencode/commands/)"
  echo "  6) agy         (.agy/skills/bookkit/)"
  echo "  7) cursor      (.cursor/rules/)"
  echo "  8) windsurf    (.windsurf/rules/)"
  echo "  9) copilot     (.github/)"
  echo " 10) gemini      (.gemini/commands/)"
  echo " 11) Todas"
  echo ""
  read -rp "  Escolha (ex: 1 ou 1 3 para múltiplas): " CHOICES
  for c in $CHOICES; do
    case $c in
      1) TOOLS+=("claude") ;;
      2) TOOLS+=("openclaude") ;;
      3) TOOLS+=("codex") ;;
      4) TOOLS+=("kimi") ;;
      5) TOOLS+=("opencode") ;;
      6) TOOLS+=("agy") ;;
      7) TOOLS+=("cursor") ;;
      8) TOOLS+=("windsurf") ;;
      9) TOOLS+=("copilot") ;;
      10) TOOLS+=("gemini") ;;
      11) INSTALL_ALL=1 ;;
    esac
  done
fi

[[ "$INSTALL_ALL" -eq 1 ]] && TOOLS=("claude" "openclaude" "codex" "kimi" "opencode" "agy" "cursor" "windsurf" "copilot" "gemini")

declare -A DEST=(
  [claude]=".claude/commands"
  [codex]=".agents/skills/bookkit"
  [kimi]=".kimi/commands"
  [opencode]=".opencode/commands"
  [agy]=".agy/skills/bookkit"
  [cursor]=".cursor/rules"
  [windsurf]=".windsurf/rules"
  [copilot]=".github"
  [gemini]=".gemini/commands"
)

echo ""
echo "  Instalando Book Kit v3 em: $TARGET_DIR"
echo "  Ferramentas: ${TOOLS[*]}"
echo ""

mkdir -p "$TARGET_DIR/bookkit/chapters"
ERRORS=0

for TOOL in "${TOOLS[@]}"; do
  if [[ "$TOOL" == "openclaude" ]]; then
    ARGS=(--target "$TARGET_DIR")
    [[ "$GLOBAL" == true ]] && ARGS+=(--global)
    if bash "$SCRIPT_DIR/adapters/openclaude/install.sh" "${ARGS[@]}"; then
      echo "  ✓  openclaude  >>  .openclaude/skills/<command>/SKILL.md"
    else
      echo "  [ERRO] Falha na instalação OpenClaude"; ((ERRORS++))
    fi
    continue
  fi

  D="${DEST[$TOOL]:-}"
  if [[ -z "$D" ]]; then
    echo "  [ERRO] Ferramenta desconhecida: $TOOL"; ((ERRORS++)); continue
  fi
  SRC="$SCRIPT_DIR/adapters/$TOOL"
  if [[ ! -d "$SRC" ]]; then
    echo "  [ERRO] Adapter não encontrado: $SRC"; ((ERRORS++)); continue
  fi
  FULL="$TARGET_DIR/$D"
  mkdir -p "$FULL"
  cp "$SRC"/bookkit.* "$FULL/" 2>/dev/null || true
  cp "$SRC"/bookkit-* "$FULL/" 2>/dev/null || true
  COUNT=$(ls "$FULL"/bookkit* 2>/dev/null | wc -l | tr -d ' ')
  echo "  ✓  $TOOL  >>  $D/  ($COUNT comandos)"
done

cp "$SCRIPT_DIR/templates/"*.md "$TARGET_DIR/" 2>/dev/null || true

echo ""
[[ $ERRORS -eq 0 ]] && echo "  ✓  Book Kit v3 instalado com sucesso." || echo "  ⚠  Algumas instalações tiveram problemas."
echo ""
echo "  Fluxo recomendado:"
echo "    /bookkit.constitution → CONSTITUTION.md"
echo "    /bookkit.brief        → BRIEF.md"
echo "    /bookkit.outline      → OUTLINE.md"
echo "    /bookkit.write Cap.01 → chapters/cap-01.md"
echo "    /bookkit.review       → REVIEW.md"
echo ""
