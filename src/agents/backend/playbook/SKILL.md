---
name: backend-playbook
description: Templates and checklists for the Backend Developer (backend) agent - input checklist, stack detection, task plan, test strategy (unit, integration, contract), database migrations, server-side event instrumentation, bug fix, security remediation, self-review, PR description, review fix response, and the be-* learned skill template. Use whenever implementing a backend task or API endpoint, writing migrations, fixing a backend bug or security finding, responding to a code review, or writing backend tests.
---

# Backend Playbook

| Step | File |
|---|---|
| Validate inputs | `templates/input-checklist.md` |
| Detect the stack | `templates/stack-detection.md` |
| Plan a task | `templates/task-plan.md` |
| Tests (all three layers) | `templates/test-strategy.md` |
| Database migrations | `templates/migrations.md` |
| Server-side events | `templates/instrumentation.md` |
| Bug fix | `templates/bug-fix.md` |
| Security remediation | `templates/security-remediation.md` |
| Self-review before PR | `templates/self-review.md` |
| PR description | `templates/pr-description.md` |
| Responding to a review | `templates/fix-response.md` |
| New learned skill (be-*) | `templates/learned-skill.md` |

## Commands you'll use
```
git fetch origin && git switch -c be/T-020-create-session origin/<default-branch>
docker compose up -d db            # local DB only; never staging/production
<run lint> && <run typecheck/compile> && <run tests> && <run build>
<migrate up> && <migrate down> && <migrate up>   # on a fresh local DB
gh pr create --title "T-020: POST /v1/sessions" --body-file .claude/agent-team/backend/pr-T-020.md \
  --label backend --label ai-generated          # only when push is allowed
```
