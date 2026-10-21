# Code Review Checklist

**Version:** 0.1  Each item cites its source.

## CR-ALL: Every PR
- [ ] CR-ALL-01 Linked to a task; does what the task says and nothing more
- [ ] CR-ALL-02 Size reasonable; one concern per PR
- [ ] CR-ALL-03 Respects architecture boundaries (no layer skipping, no new cross-component calls)
- [ ] CR-ALL-04 Matches the API contract exactly (paths, schemas, status codes, error shape)
- [ ] CR-ALL-05 Meets Technical Standards (cite STD-*)
- [ ] CR-ALL-06 Tests cover the acceptance checks and fail without the change
- [ ] CR-ALL-07 No secrets, no PII in logs, inputs validated
- [ ] CR-ALL-08 Readable: names, no dead code, comments explain why
- [ ] CR-ALL-09 CI green

## CR-FE: Frontend
- [ ] Uses generated API client; loading, empty and error states; accessibility (labels, focus, contrast); matches wireframe

## CR-BE: Backend
- [ ] AuthZ on every endpoint; transactions and idempotency where needed; migrations reversible; N+1 queries avoided

## CR-MOB: Mobile
- [ ] Offline and poor-network behaviour; secure storage for tokens; permissions minimal; app-size impact

## CR-AI: AI feature
- [ ] Prompt in repo and versioned; injection defences; output validated; PII policy respected
- [ ] Timeouts, fallbacks, cost limits; eval set updated and passing

## CR-BOT: AI-authored PRs (in addition)
- [ ] Every imported package/API actually exists and is approved
- [ ] No scope creep or speculative abstractions
- [ ] Tests assert real behaviour (not mocks of the thing under test)
- [ ] Reuses existing helpers instead of duplicating them
- [ ] Description matches the actual diff
