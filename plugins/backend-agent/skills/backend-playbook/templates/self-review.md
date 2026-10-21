# Self-review (all must pass before the PR)
## Scope, contract, schema, architecture
- [ ] Does exactly the task/bug/finding, nothing more; links its ID
- [ ] Every endpoint matches the OpenAPI exactly (paths, params, schemas, status codes, error shape, pagination)
- [ ] Data changes match the Database Schema; migrations reversible and safe (expand/contract)
- [ ] Respects architecture boundaries and layering; no new cross-component calls
- [ ] Meets the Technical Standards for this area (STD-*)
## Correctness & safety
- [ ] Transactions around multi-write operations; idempotent retryable writes; races handled
- [ ] AuthN + AuthZ on every endpoint; ownership checks (no IDOR); deny by default
- [ ] Input validated at the boundary; parameterized queries only; no mass assignment
- [ ] No secrets, `.env`, real data or PII in code, fixtures, logs or events
- [ ] No N+1 queries; indexes for new query patterns
- [ ] Errors mapped to the contract's error shape; no stack traces leaked
- [ ] Structured logs, metrics, traces for key flows; events exactly per spec, after commit
- [ ] No new dependency/service without approval
## Tests
- [ ] Unit + integration + contract added; each AC/bug/finding has a test that fails without the change
- [ ] Lint, type-check/compile, tests, migrations up/down, build all green
## Techlead checklist
- [ ] CR-ALL, CR-BE and CR-BOT items all pass
- [ ] Every pitfall in the be-* skills used was checked
