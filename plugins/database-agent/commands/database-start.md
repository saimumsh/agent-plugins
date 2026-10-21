---
description: Start the Database Engineer agent. Every following prompt in this session is routed to it (stops any other agent).
allowed-tools: Bash
---
!`S=.claude/agent-team; mkdir -p $S/database; P=$(cat $S/active 2>/dev/null); echo database > $S/active; echo "STARTED: database"; [ -n "$P" ] && [ "$P" != "database" ] && echo "STOPPED previous agent: $P"; echo "Skills:"; ls -d ~/.claude/skills/db-*/ 2>/dev/null | xargs -n1 basename 2>/dev/null || echo "(none yet)"`

Tell the user in 2-3 short lines: the Database Engineer agent is on (mention a stopped agent if any), its
input and output (from the database agent description), its learned skills, and that
`/database-stop` turns it off. Ask for its input.
