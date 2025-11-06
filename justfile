# justfile for prompt-library
# Requires: just (https://github.com/casey/just)

# Default recipe (shows available commands)
default:
    @just --list

# Zip all skills in prompts/skills/ to dist/
zip-skills:
    #!/usr/bin/env bash
    echo "Zipping all skills to dist/..."
    mkdir -p dist
    for skill_dir in prompts/skills/*/; do
        if [ -d "$skill_dir" ]; then
            skill_name=$(basename "$skill_dir")
            echo "  Creating $skill_name.skill..."
            (cd prompts/skills && zip -r -q "../../dist/$skill_name.skill" "$skill_name")
        fi
    done
    echo "Done! Skills packaged in dist/"

# Remove all generated .skill files
clean:
    echo "Cleaning dist/..."
    rm -rf dist
    echo "Done! All .skill files removed."
