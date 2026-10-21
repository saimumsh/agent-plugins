#!/usr/bin/env bash
# Every prompt: route to this agent only if it is the active one.
S="${CLAUDE_PROJECT_DIR:-$PWD}/.claude/agent-team"
INPUT="$(cat)"
[ -f "$S/active" ] || exit 0
[ "$(tr -cd 'a-z0-9-' < "$S/active" 2>/dev/null)" = "cto" ] || exit 0
# Slash commands (this plugin's controls, other agents' commands, built-ins) are never routed.
if printf '%s' "$INPUT" | grep -Eq '"prompt"[[:space:]]*:[[:space:]]*"[[:space:]]*/'; then
  exit 0
fi
cat <<'MSG'
[AGENT MODE: cto]
Do not answer this prompt yourself. Delegate it to the `cto` subagent with the Task tool
(it may be listed as `cto-agent:cto`). In the task description include the user's prompt
word for word plus any context from this conversation it needs (it starts with a fresh context).
Relay its result faithfully. If it reports INPUT NEEDED, QUESTIONS or AWAITING APPROVAL, show that
to the user and wait; their next prompt will be routed back to it.
MSG
exit 0
