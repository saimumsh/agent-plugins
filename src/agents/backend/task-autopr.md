---
description: Backend Developer - allow (on) or disallow (off) pushing branches and opening PRs automatically.
argument-hint: on | off
allowed-tools: Bash
---
!`F=.claude/agent-team/backend/config; mkdir -p $(dirname $F); touch $F; sed -i '/^auto_pr=/d' $F; case "$ARGUMENTS" in on) echo auto_pr=true >> $F; echo "AUTO-PR: ON";; off) echo auto_pr=false >> $F; echo "AUTO-PR: OFF";; *) echo "AUTO-PR: $(grep -o 'auto_pr=.*' $F || echo 'auto_pr=false (default)')  usage: /backend-autopr on|off";; esac`

Tell the user the setting in one line. When ON, the agent pushes its own feature branches and opens
PRs; it still never merges or touches the default branch.
