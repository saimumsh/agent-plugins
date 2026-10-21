#!/usr/bin/env bash
# New session: no agent active. Register this agent so other agents' /status can see it.
S="${CLAUDE_PROJECT_DIR:-$PWD}/.claude/agent-team"
mkdir -p "$S/registry" "$S/backend" "$HOME/.claude/skills"
rm -f "$S/active"
printf '%s|%s\n' "be" "Backend Developer" > "$S/registry/backend"
exit 0
