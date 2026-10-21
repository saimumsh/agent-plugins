---
description: Start the Frontend Developer agent. Every following prompt in this session is routed to it (stops any other agent).
allowed-tools: Bash
---
!`S=.claude/agent-team; mkdir -p $S/frontend; P=$(cat $S/active 2>/dev/null); echo frontend > $S/active; echo "STARTED: frontend"; [ -n "$P" ] && [ "$P" != "frontend" ] && echo "STOPPED previous agent: $P"; echo "Skills:"; ls -d ~/.claude/skills/fe-*/ 2>/dev/null | xargs -n1 basename 2>/dev/null || echo "(none yet)"`

Tell the user in 2-3 short lines: the Frontend Developer agent is on (mention a stopped agent if any), its
input and output (from the frontend agent description), its learned skills, and that
`/frontend-stop` turns it off. Ask for its input.
