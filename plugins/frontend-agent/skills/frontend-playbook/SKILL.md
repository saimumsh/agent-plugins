---
name: frontend-playbook
description: Templates and checklists for the Frontend Developer (frontend) agent - input checklist, stack detection, task plan, test strategy (unit, component, integration), event instrumentation, bug fix, security remediation, self-review, PR description, review fix response, and the fe-* learned skill template. Use whenever implementing a frontend task, fixing a frontend bug or security finding, responding to a code review, writing frontend tests, or instrumenting analytics events.
---

# Frontend Playbook

| Step | File |
|---|---|
| Validate inputs | `templates/input-checklist.md` |
| Detect the stack | `templates/stack-detection.md` |
| Plan a task | `templates/task-plan.md` |
| Tests (all three layers) | `templates/test-strategy.md` |
| Analytics events | `templates/instrumentation.md` |
| Bug fix | `templates/bug-fix.md` |
| Security remediation | `templates/security-remediation.md` |
| Self-review before PR | `templates/self-review.md` |
| PR description | `templates/pr-description.md` |
| Responding to a review | `templates/fix-response.md` |
| New learned skill (fe-*) | `templates/learned-skill.md` |

## Commands you'll use
```
git fetch origin && git switch -c fe/T-012-login-form origin/<default-branch>
<pm> run lint && <pm> run typecheck && <pm> test && <pm> run build     # pm = npm | pnpm | yarn | bun
gh pr create --title "T-012: Login form" --body-file .claude/agent-team/frontend/pr-T-012.md \
  --label frontend --label ai-generated          # only when push is allowed
gh pr view <n> --json reviews,comments           gh issue view <n>   # bug reports in GitHub issues
```
