---
description: Start the __TITLE__ agent. Every following prompt in this session is routed to it (stops any other agent).
allowed-tools: Bash
---
!`S=.claude/agent-team; mkdir -p $S/__NAME__; P=$(cat $S/active 2>/dev/null); echo __NAME__ > $S/active; echo "STARTED: __NAME__"; [ -n "$P" ] && [ "$P" != "__NAME__" ] && echo "STOPPED previous agent: $P"; echo "Skills:"; ls -d ~/.claude/skills/__PREFIX__-*/ 2>/dev/null | xargs -n1 basename 2>/dev/null || echo "(none yet)"`

Tell the user in 2-3 short lines: the __TITLE__ agent is on (mention a stopped agent if any), its
input and output (from the __NAME__ agent description), its learned skills, and that
`/__NAME__-stop` turns it off. Ask for its input.
