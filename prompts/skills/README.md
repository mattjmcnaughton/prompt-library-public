# Claude Skills

This directory contains Claude Skills - packaged, reusable capabilities that can be loaded into Claude to extend its functionality for specific tasks or workflows.

## What are Skills?

Skills are specialized modules that provide Claude with:
- Domain-specific knowledge and expertise
- Structured workflows and interaction patterns
- Custom tools and capabilities
- Guided user experiences for complex tasks

Each skill is a self-contained directory with a `SKILL.md` file defining its behavior, along with any supporting assets, references, or additional documentation.

## Current Skills

- **ai-paper-guide**: Interactive guided walkthrough of ML/AI research papers with comprehension checks and practical takeaways

## How Skills Work

Skills are packaged as `.skill` files (zip archives) and uploaded to Claude through the web interface:

1. Package skills using the justfile commands (see below)
2. Navigate to Claude's web interface
3. Upload the `.skill` file to activate the skill
4. Invoke the skill by name when needed

Once loaded, skills integrate seamlessly into Claude's capabilities and can be invoked during conversations.

## Building Skills

Use the justfile in the repository root to package skills:

```bash
# List available skills
just list-skills

# Package all skills to dist/
just zip-skills

# Package a specific skill
just zip-skill ai-paper-guide

# Clean generated files
just clean
```

Built `.skill` files will be created in the `dist/` directory at the repository root.

## Creating New Skills

To create a new skill, use Anthropic's skill-creator tool:

```bash
# Use skill-creator from Anthropic to scaffold a new skill
# Follow the prompts to define your skill's capabilities
```

Each skill directory should contain:
- `SKILL.md` - Main skill definition and behavior
- `assets/` - Optional supporting files, images, or resources
- `references/` - Optional reference documentation
- Additional files as needed for your specific skill

## Installation

### Web Interface

Skills can be manually uploaded to Claude via the web UI:

1. Build the skill: `just zip-skill skill-name`
2. Locate the `.skill` file in `dist/skill-name.skill`
3. Upload through Claude's interface
4. Skill is now available for use

### Claude Code

Skills can be used directly in Claude Code by symlinking them to `~/.claude/skills`:

```bash
# Create skills directory if it doesn't exist
mkdir -p ~/.claude/skills

# Symlink individual skill directories
ln -s /path/to/prompt-library/prompts/skills/ai-paper-guide ~/.claude/skills/ai-paper-guide

# Or symlink all skills at once
ln -s /path/to/prompt-library/prompts/skills/* ~/.claude/skills/
```

Once symlinked, skills will be automatically available in Claude Code without needing to package or upload them

## Skill Development Tips

- Keep skills focused on a specific domain or workflow
- Provide clear documentation in the SKILL.md file
- Include examples and usage patterns
- Test thoroughly before packaging
- Follow the no-emoji convention for professional consistency
