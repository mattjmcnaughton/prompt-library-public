# prompt-library

Personal collection of AI prompts organized by category.

## Structure

- `prompts/user/` - User prompts for direct interaction
- `prompts/system/` - System prompts and context
- `prompts/agentic-coding/` - AI coding assistant prompts
  - `commands/` - Command-based prompts
  - `agents/` - Sub-agent files (Claude-only)
  - `agent-specifications/` - CLAUDE.md/AGENT.md
- `prompts/skills` - Claude Skills

## Install

For now, we do not hard-code strategies for syncing prompts to the other coding agent configuration. Instead, use one of the following approaches:

### Symlink (Recommended)
```bash
ln -sf /path/to/prompt-library/prompts/agentic-coding/commands ~/.claude/commands
ln -sf /path/to/prompt-library/prompts/agentic-coding/commands ~/.cursor/commands
ln -sf /path/to/prompt-library/prompts/agentic-coding/commands ~/.codex/prompts

ln -sf /path/to/prompt-library/prompts/agentic-coding/agents ~/.claude/agents
```

### Rsync
```bash
rsync -azv --delete /path/to/prompt-library/prompts/agentic-coding/commands/ ~/.claude/commands/
rsync -azv --delete /path/to/prompt-library/prompts/agentic-coding/commands/ ~/.cursor/commands/
rsync -azv --delete /path/to/prompt-library/prompts/agentic-coding/commands/ ~/.codex/prompts/

rsync -azv --delete /path/to/prompt-library/prompts/agentic-coding/agents/ ~/.claude/agents/
```

## Building Skills

Skills are packaged as `.skill` files (zip archives) for upload to Claude. Use the `justfile` to build them:

```bash
# Install just if needed: brew install just

# Package all skills
just zip-skills

# Clean generated files
just clean
```

Skills will be generated in the `dist/` directory. Upload `.skill` files manually to Claude via the UI.

See `prompts/skills/README.md` for more information about creating and using skills.
