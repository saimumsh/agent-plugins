---
description: Backend Developer - do one piece of work and deliver a PR. Usage - /backend-work T-012 | BUG-0007 | SEC-0003 | 42 (PR to fix). Empty = next item by priority.
argument-hint: [T-NNN | BUG-NNNN | SEC-NNNN | pr-number]
---
Delegate to the `backend` subagent (may be listed as `backend-agent:backend`):
"Work item: $ARGUMENTS (if empty, pick the next item by your priority order and say why).
Choose the mode from the id, deliver the PR with unit, integration and contract tests, then LEARN."
Relay its report.
