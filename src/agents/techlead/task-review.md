---
description: Technical Lead - review pull requests and write Code Review Decisions. Usage - /techlead-review 42 43 or branch names (empty = all open PRs).
argument-hint: [pr-numbers | branches]
---
Delegate to the `techlead` subagent (may be listed as `techlead-agent:techlead`):
"Mode REVIEW for: $ARGUMENTS (if empty, all open PRs from `gh pr list`). Classify each PR, write a
Code Review Decision per PR, then LEARN. Do not post to GitHub unless I said so." Relay its report.
