---
description: CTO - review a Requirements Specification + ADRs; output Technical Standards + ADR Approvals.
argument-hint: [spec-path] [adr-paths...]
---
Delegate to the `cto` subagent (may be listed as `cto-agent:cto`):
"Review: $ARGUMENTS (if empty, use docs/requirements/ and every ADR in docs/adr/ with status
Proposed). Produce Technical Standards and an ADR Approval per ADR, then LEARN."
Relay its report.
