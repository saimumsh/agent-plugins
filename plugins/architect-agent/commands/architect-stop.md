---
description: Stop the Solution Architect agent. Prompts go back to normal Claude.
allowed-tools: Bash
---
!`S=.claude/agent-team; if [ "$(cat $S/active 2>/dev/null)" = "architect" ]; then rm -f $S/active; echo "STOPPED: architect"; else echo "NOT ACTIVE: architect (active: $(cat $S/active 2>/dev/null || echo none))"; fi`

Tell the user in one line what happened. Journal and skills are kept.
