---
description: Start the CTO agent. Every following prompt in this session is routed to it (stops any other agent).
allowed-tools: Bash
---
!`S=.claude/agent-team; mkdir -p $S/cto; P=$(cat $S/active 2>/dev/null); echo cto > $S/active; echo "STARTED: cto"; [ -n "$P" ] && [ "$P" != "cto" ] && echo "STOPPED previous agent: $P"; echo "Skills:"; ls -d ~/.claude/skills/cto-*/ 2>/dev/null | xargs -n1 basename 2>/dev/null || echo "(none yet)"`

Tell the user in 2-3 short lines: the CTO agent is on (mention a stopped agent if any), its
input and output (from the cto agent description), its learned skills, and that
`/cto-stop` turns it off. Ask for its input.
