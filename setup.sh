#!/usr/bin/env bash
# Book Kit v2 — setup.sh (Unix/macOS/WSL)
# Uso: bash setup.sh [--tool claude] [--all] [--target /caminho]

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$(pwd)"
TOOLS=()
INSTALL_ALL=0

while [[ $# -gt 0 ]]; do
  case $1 in
    --tool)   TOOLS+=("$2"); shift 2 ;;
    --target) TARGET_DIR="$2"; shift 2 ;;
    --all)    INSTALL_ALL=1; shift ;;
    --help|-h)
      echo ""
      echo "  Book Kit v2 — setup.sh"
      echo "  ========================"
      echo ""
      echo "  Uso:"
      echo "    bash setup.sh --tool <key>"
      echo "    bash setup.sh --all"
      echo "    bash setup.sh --all --target ~/projetos/meu-livro"
      echo ""
      echo "  Ferramentas:"
      echo "    claude      .claude/commands/           /bookkit.brief"
      echo "    codex       .agents/skills/bookkit/     \$bookkit-brief"
      echo "    kimi        .kimi/commands/              /bookkit.brief"
      echo "    opencode    .opencode/commands/          /bookkit.brief"
      echo "    agy         .agy/skills/bookkit/         /bookkit.brief  [Antigravity]"
      echo "    cursor      .cursor/rules/               @bookkit.brief  (.mdc)"
      echo "    windsurf    .windsurf/rules/             @bookkit.brief"
      echo "    copilot     .github/                     /bookkit-brief  (.prompt.md)"
      echo "    gemini      .gemini/commands/             /bookkit.brief"
      echo ""
      echo "  Comandos disponíveis após instalação:"
      echo "    bookkit.constitution · bookkit.brief · bookkit.argument [NF]"
      echo "    bookkit.sources [NF] · bookkit.clarify · bookkit.checklist"
      echo "    bookkit.outline · bookkit.chapters · bookkit.write"
      echo "    bookkit.continuity · bookkit.review"
      echo ""
      exit 0 ;;
    *) echo "  Argumento desconhecido: $1"; exit 1 ;;
  esac
done

if [[ ${#TOOLS[@]} -eq 0 && "$INSTALL_ALL" -eq 0 ]]; then
  echo ""
  echo "  Book Kit v2 — Qual ferramenta você está usando?"
  echo "  ================================================="
  echo ""
  echo "  1) claude      (.claude/commands/)"
  echo "  2) codex       (.agents/skills/bookkit/)"
  echo "  3) kimi        (.kimi/commands/)"
  echo "  4) opencode    (.opencode/commands/)"
  echo "  5) agy         (.agy/skills/bookkit/)  [Antigravity]"
  echo "  6) cursor      (.cursor/rules/)"
  echo "  7) windsurf    (.windsurf/rules/)"
  echo "  8) copilot     (.github/)"
  echo "  9) gemini      (.gemini/commands/)"
  echo " 10) Todas"
  echo ""
  read -rp "  Escolha (ex: 1 ou 1 3 para múltiplas): " CHOICES
  for c in $CHOICES; do
    case $c in
      1)  TOOLS+=("claude") ;;
      2)  TOOLS+=("codex") ;;
      3)  TOOLS+=("kimi") ;;
      4)  TOOLS+=("opencode") ;;
      5)  TOOLS+=("agy") ;;
      6)  TOOLS+=("cursor") ;;
      7)  TOOLS+=("windsurf") ;;
      8)  TOOLS+=("copilot") ;;
      9)  TOOLS+=("gemini") ;;
      10) INSTALL_ALL=1 ;;
    esac
  done
fi

[[ "$INSTALL_ALL" -eq 1 ]] && TOOLS=("claude" "codex" "kimi" "opencode" "agy" "cursor" "windsurf" "copilot" "gemini")

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
  D="${DEST[$TOOL]}"
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

# Copy templates
cp "$SCRIPT_DIR/templates/"*.md "$TARGET_DIR/" 2>/dev/null || true

echo ""
[[ $ERRORS -eq 0 ]] && echo "  ✓  Book Kit v3 instalado com sucesso." || echo "  ⚠  Algumas instalações tiveram problemas."
echo ""
echo "  Fluxo recomendado:"
echo "    /bookkit.constitution   → CONSTITUTION.md"
echo "    /bookkit.brief          → BRIEF.md"
echo "    /bookkit.argument  [NF] → ARGUMENT.md      (não-ficção)"
echo "    /bookkit.sources   [NF] → SOURCES.md       (não-ficção)"
echo "    /bookkit.clarify        → CLARIFICATIONS.md"
echo "    /bookkit.checklist      → CHECKLIST.md"
echo "    /bookkit.outline        → OUTLINE.md"
echo "    /bookkit.chapters       → CHAPTERS.md"
echo "    /bookkit.write Cap.01   → chapters/cap-01.md"
echo "    /bookkit.continuity     → CONTINUITY.md"
echo "    /bookkit.review         → REVIEW.md"
echo ""
echo "  Modelos recomendados:"
echo "    constitution/brief/outline/write   Sonnet ou Kimi 2.7"
echo "    argument/sources                   DeepSeek Pro"
echo "    clarify/review/continuity          Kimi 2.7 ou Sonnet"
echo "    checklist/chapters                 Gemini Flash"
echo ""
# v3 commands appended to setup output
