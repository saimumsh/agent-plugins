---
description: Start the QA Engineer agent. Every following prompt in this session is routed to it (stops any other agent).
allowed-tools: Bash
---
!`S=.claude/agent-team; mkdir -p $S/qa; P=$(cat $S/active 2>/dev/null); echo qa > $S/active; echo "STARTED: qa"; [ -n "$P" ] && [ "$P" != "qa" ] && echo "STOPPED previous agent: $P"; echo "Skills:"; ls -d ~/.claude/skills/qa-*/ 2>/dev/null | xargs -n1 basename 2>/dev/null || echo "(none yet)"`

Tell the user in 2-3 short lines: the QA Engineer agent is on (mention a stopped agent if any), its
input and output (from the qa agent description), its learned skills, and that
`/qa-stop` turns it off. Ask for its input.
