# OpenClaude adapter

Book Kit installs OpenClaude commands as native skills instead of relying on the legacy Claude Code command loader.

## Project install

```bash
bash setup.sh --tool openclaude
```

Windows:

```bat
setup.bat --tool openclaude
```

The adapter generates one skill per Book Kit command:

```text
.openclaude/skills/
├── bookkit.market/SKILL.md
├── bookkit.brief/SKILL.md
├── bookkit.write/SKILL.md
└── ...
```

The directory name preserves the public slash command, so `bookkit.brief/SKILL.md` is invoked as `/bookkit.brief`.

## Global install

Use `--global` together with the OpenClaude tool. Skills are written to `~/.openclaude/skills/`, or to `$OPENCLAUDE_CONFIG_DIR/skills/` when that environment variable is set.

## Source and conversion

`adapters/claude/bookkit.*.md` is the existing Book Kit command source used by this adapter. Installation strips Claude-specific frontmatter, emits OpenClaude-native metadata (`name`, `description`, `argument-hint`, `user-invocable`), and preserves the command body and `$ARGUMENTS` placeholders.

The installer discovers `bookkit.*.md` dynamically, so future commands are included without editing the OpenClaude adapter.
