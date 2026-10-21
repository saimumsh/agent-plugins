---
name: techlead-playbook
description: Templates and checklists for the Technical Lead (techlead) agent - input checklist, PR classification, Technical Task Breakdown, Implementation Guidelines, Code Review Checklist, Code Review Decision, and the tl-* learned skill template. Use whenever breaking down a backlog into tasks, writing implementation guidelines or a review checklist, or reviewing frontend, backend, mobile, AI-feature or human pull requests.
---

# Technical Lead Playbook

| Step | File |
|---|---|
| Validate inputs | `templates/input-checklist.md` |
| Classify a PR (track + author) | `templates/pr-classification.md` |
| Technical Task Breakdown | `templates/task-breakdown.md` |
| Implementation Guidelines | `templates/implementation-guidelines.md` |
| Code Review Checklist | `templates/review-checklist.md` |
| Code Review Decision (per PR) | `templates/review-decision.md` |
| New learned skill (tl-*) | `templates/learned-skill.md` |

IDs: backlog items `B-NN`, tasks `T-NNN`, guideline sections `G-<area>-NN`, checklist items
`CR-<area>-NN`, review findings `R<pr>-NN`. Cite `STD-*`, `ADR-NNNN`, architecture sections and
`METHOD /path` from the API contract.

## Useful commands
```
gh pr list --state open --json number,title,author,labels,headRefName
gh pr view <n> --json title,body,author,files,labels,commits
gh pr diff <n>            gh pr checks <n>
git worktree add ../pr-<n> pr-<n>   # after: git fetch origin pull/<n>/head:pr-<n>
gh pr review <n> --approve | --request-changes | --comment --body-file <file>   # only if user said so
```
