#!/usr/bin/env bash
# New session: no agent active. Register this agent so other agents' /status can see it.
S="${CLAUDE_PROJECT_DIR:-$PWD}/.claude/agent-team"
mkdir -p "$S/registry" "$S/security" "$HOME/.claude/skills"
rm -f "$S/active"
printf '%s|%s\n' "sec" "Security Engineer" > "$S/registry/security"
exit 0
