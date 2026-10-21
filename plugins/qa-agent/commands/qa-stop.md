---
description: Stop the QA Engineer agent. Prompts go back to normal Claude.
allowed-tools: Bash
---
!`S=.claude/agent-team; if [ "$(cat $S/active 2>/dev/null)" = "qa" ]; then rm -f $S/active; echo "STOPPED: qa"; else echo "NOT ACTIVE: qa (active: $(cat $S/active 2>/dev/null || echo none))"; fi`

Tell the user in one line what happened. Journal and skills are kept.
