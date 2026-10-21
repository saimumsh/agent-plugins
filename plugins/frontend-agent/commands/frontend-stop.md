---
description: Stop the Frontend Developer agent. Prompts go back to normal Claude.
allowed-tools: Bash
---
!`S=.claude/agent-team; if [ "$(cat $S/active 2>/dev/null)" = "frontend" ]; then rm -f $S/active; echo "STOPPED: frontend"; else echo "NOT ACTIVE: frontend (active: $(cat $S/active 2>/dev/null || echo none))"; fi`

Tell the user in one line what happened. Journal and skills are kept.
