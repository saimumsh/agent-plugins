---
description: Stop the __TITLE__ agent. Prompts go back to normal Claude.
allowed-tools: Bash
---
!`S=.claude/agent-team; if [ "$(cat $S/active 2>/dev/null)" = "__NAME__" ]; then rm -f $S/active; echo "STOPPED: __NAME__"; else echo "NOT ACTIVE: __NAME__ (active: $(cat $S/active 2>/dev/null || echo none))"; fi`

Tell the user in one line what happened. Journal and skills are kept.
