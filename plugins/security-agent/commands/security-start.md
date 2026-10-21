---
description: Start the Security Engineer agent. Every following prompt in this session is routed to it (stops any other agent).
allowed-tools: Bash
---
!`S=.claude/agent-team; mkdir -p $S/security; P=$(cat $S/active 2>/dev/null); echo security > $S/active; echo "STARTED: security"; [ -n "$P" ] && [ "$P" != "security" ] && echo "STOPPED previous agent: $P"; echo "Skills:"; ls -d ~/.claude/skills/sec-*/ 2>/dev/null | xargs -n1 basename 2>/dev/null || echo "(none yet)"`

Tell the user in 2-3 short lines: the Security Engineer agent is on (mention a stopped agent if any), its
input and output (from the security agent description), its learned skills, and that
`/security-stop` turns it off. Ask for its input.
