---
description: Start the Solution Architect agent. Every following prompt in this session is routed to it (stops any other agent).
allowed-tools: Bash
---
!`S=.claude/agent-team; mkdir -p $S/architect; P=$(cat $S/active 2>/dev/null); echo architect > $S/active; echo "STARTED: architect"; [ -n "$P" ] && [ "$P" != "architect" ] && echo "STOPPED previous agent: $P"; echo "Skills:"; ls -d ~/.claude/skills/sa-*/ 2>/dev/null | xargs -n1 basename 2>/dev/null || echo "(none yet)"`

Tell the user in 2-3 short lines: the Solution Architect agent is on (mention a stopped agent if any), its
input and output (from the architect agent description), its learned skills, and that
`/architect-stop` turns it off. Ask for its input.
