---
description: QA Engineer - allow (on) or disallow (off) creating GitHub issues for bug reports automatically.
argument-hint: on | off
allowed-tools: Bash
---
!`F=.claude/agent-team/qa/config; mkdir -p $(dirname $F); touch $F; sed -i '/^auto_issue=/d' $F; case "$ARGUMENTS" in on) echo auto_issue=true >> $F; echo "AUTO-ISSUE: ON";; off) echo auto_issue=false >> $F; echo "AUTO-ISSUE: OFF";; *) echo "AUTO-ISSUE: $(grep -o 'auto_issue=.*' $F || echo 'auto_issue=false (default)')  usage: /qa-autoissue on|off";; esac`

Tell the user the setting in one line. Bug reports are always written to docs/bugs/; when ON they
are also created as GitHub issues labelled `bug` (+ track, + severity).
