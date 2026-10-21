---
description: Show whether the __TITLE__ agent is active, all installed agents, skill counts, and its recent journal.
allowed-tools: Bash
---
!`S=.claude/agent-team; echo "ACTIVE: $(cat $S/active 2>/dev/null || echo none)"; echo "INSTALLED AGENTS:"; for f in $S/registry/*; do [ -f "$f" ] || continue; n=$(basename $f); p=$(cut -d'|' -f1 $f); echo "- $n ($(ls -d ~/.claude/skills/$p-*/ 2>/dev/null | wc -l) skills)"; done; echo "JOURNAL (__NAME__):"; tail -n 25 $S/__NAME__/journal.md 2>/dev/null || echo "(empty)"`

Summarize briefly.
