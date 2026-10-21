---
description: Stop the Backend Developer agent. Prompts go back to normal Claude.
allowed-tools: Bash
---
!`S=.claude/agent-team; if [ "$(cat $S/active 2>/dev/null)" = "backend" ]; then rm -f $S/active; echo "STOPPED: backend"; else echo "NOT ACTIVE: backend (active: $(cat $S/active 2>/dev/null || echo none))"; fi`

Tell the user in one line what happened. Journal and skills are kept.
