#!/bin/bash

# Work Logger Installer
# This script sets up the Claude Code skills and creates the logs folder.

set -e

# Detect where this script lives (the cloned repo location)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo ""
echo "==================================="
echo "  Work Logger — Installer"
echo "==================================="
echo ""

# Step 1: Create logs directory inside the repo
if [ ! -d "$SCRIPT_DIR/logs" ]; then
    mkdir -p "$SCRIPT_DIR/logs"
    echo "[OK] Created logs/"
else
    echo "[OK] logs/ already exists"
fi

# Step 2: Create Claude Code commands directory
if [ ! -d "$HOME/.claude/commands" ]; then
    mkdir -p "$HOME/.claude/commands"
    echo "[OK] Created ~/.claude/commands/"
else
    echo "[OK] ~/.claude/commands/ already exists"
fi

# Step 3: Create symlinks for each skill
SKILLS=("setup" "log" "task" "weekly-email" "quarterly-draft")

for skill in "${SKILLS[@]}"; do
    SOURCE="$SCRIPT_DIR/skills/$skill.md"
    TARGET="$HOME/.claude/commands/$skill.md"

    if [ ! -f "$SOURCE" ]; then
        echo "[ERROR] Skill file not found: $SOURCE"
        echo "        Make sure you are running this script from the work-logger folder."
        exit 1
    fi

    # Remove existing file or symlink before creating new one
    if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
        rm "$TARGET"
    fi

    ln -s "$SOURCE" "$TARGET"
    echo "[OK] Linked /$skill skill"
done

echo ""
echo "==================================="
echo "  Installation complete!"
echo "==================================="
echo ""
echo "Next steps:"
echo ""
echo "  1. Open Claude Code"
echo "  2. Type: /setup"
echo "  3. Follow the prompts to configure your profile"
echo ""
echo "After setup, you can use:"
echo "  /task           — Log a single task quickly (anytime during the day)"
echo "  /log            — Log your daily activities (end of day)"
echo "  /weekly-email   — Generate your weekly summary email (Friday)"
echo "  /quarterly-draft — Generate your quarterly self-assessment draft"
echo ""
