---
description: Start the Technical Lead agent. Every following prompt in this session is routed to it (stops any other agent).
allowed-tools: Bash
---
!`S=.claude/agent-team; mkdir -p $S/techlead; P=$(cat $S/active 2>/dev/null); echo techlead > $S/active; echo "STARTED: techlead"; [ -n "$P" ] && [ "$P" != "techlead" ] && echo "STOPPED previous agent: $P"; echo "Skills:"; ls -d ~/.claude/skills/tl-*/ 2>/dev/null | xargs -n1 basename 2>/dev/null || echo "(none yet)"`

Tell the user in 2-3 short lines: the Technical Lead agent is on (mention a stopped agent if any), its
input and output (from the techlead agent description), its learned skills, and that
`/techlead-stop` turns it off. Ask for its input.
