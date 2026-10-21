---
name: cto-playbook
description: Checklists and templates for the CTO agent. INPUT checks for Requirements Specifications and ADRs; OUTPUT templates for feature Technical Standards, ADR Approvals, global standards, and learned cto-* review skills. Use whenever reviewing a spec or ADR, setting technical standards, approving or rejecting an ADR, or capturing a cto-* skill.
---

# CTO Playbook

| Step | File |
|---|---|
| Validate input (spec + ADR) | `templates/input-checklist.md` |
| Output 1: feature Technical Standards | `templates/feature-standards.md` |
| Output 2: ADR Approval | `templates/adr-approval.md` |
| First-time org-wide standards | `templates/global-standards.md` |
| New learned review skill | `templates/learned-skill.md` |

## ADR status values the CTO agent sets
`Proposed` (changes requested) → `Accepted` (approved / approved with conditions) | `Rejected`.
An Accepted ADR is only changed by a new ADR that supersedes it.

## Rule IDs
Feature standards use `STD-<FEATURE>-NN` (e.g. `STD-AUTH-03`) so approvals and code reviews can cite them.

## Good learned skills
A learned skill makes the *next* review of the same kind of feature faster and sharper:
the standards that always apply, patterns that get approved, red flags that get rejected, and
a review checklist. It is not a diary of this project.
