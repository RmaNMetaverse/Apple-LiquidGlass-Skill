#!/usr/bin/env bash
# LiquidGlass AI Agent Skill Installer for macOS / Linux
# Supports Antigravity, Claude Code, OpenAI Codex CLI, and Universal Agent standard

set -e

SKILL_NAME="liquidglass"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TARGETS=(
    "$HOME/.agents/skills/$SKILL_NAME"
    "$HOME/.claude/skills/$SKILL_NAME"
    "$HOME/.codex/skills/$SKILL_NAME"
    "$HOME/.gemini/config/skills/$SKILL_NAME"
)

echo "Installing $SKILL_NAME skill across all AI agents..."

for target in "${TARGETS[@]}"; do
    mkdir -p "$target"
    cp -f "$SCRIPT_DIR/SKILL.md" "$target/SKILL.md"
    [ -d "$SCRIPT_DIR/references" ] && cp -rf "$SCRIPT_DIR/references" "$target/"
    [ -d "$SCRIPT_DIR/examples" ] && cp -rf "$SCRIPT_DIR/examples" "$target/"
    echo "  [OK] Installed to $target"
done

echo "Done! LiquidGlass skill is now available in Claude Code, ChatGPT/Codex, Antigravity, and .agents."
