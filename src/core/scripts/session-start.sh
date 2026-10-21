#!/usr/bin/env bash
# New session: no agent active. Register this agent so other agents' /status can see it.
S="${CLAUDE_PROJECT_DIR:-$PWD}/.claude/agent-team"
mkdir -p "$S/registry" "$S/__NAME__" "$HOME/.claude/skills"
rm -f "$S/active"
printf '%s|%s\n' "__PREFIX__" "__TITLE__" > "$S/registry/__NAME__"
exit 0
