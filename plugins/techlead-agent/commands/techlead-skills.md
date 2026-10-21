---
description: List the Technical Lead agent's learned skills with version and times used.
allowed-tools: Bash
---
!`for f in ~/.claude/skills/tl-*/SKILL.md; do [ -f "$f" ] && echo "$(basename $(dirname $f)) :: $(grep -m1 -oE 'Version:\*\* [0-9.]+' $f) :: $(grep -m1 -oE 'Times used:\*\* [0-9]+' $f)"; done 2>/dev/null; echo "(end)"`

Show a short table: skill, version, times used. If none, say skills grow after the first feature.
