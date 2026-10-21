---
description: Stop the CTO agent. Prompts go back to normal Claude.
allowed-tools: Bash
---
!`S=.claude/agent-team; if [ "$(cat $S/active 2>/dev/null)" = "cto" ]; then rm -f $S/active; echo "STOPPED: cto"; else echo "NOT ACTIVE: cto (active: $(cat $S/active 2>/dev/null || echo none))"; fi`

Tell the user in one line what happened. Journal and skills are kept.
