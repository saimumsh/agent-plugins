# Test strategy

## Unit
Domain logic and services with fakes/in-memory repos, validators, mappers, authorization
policies, idempotency and retry logic, event payload builders, time with an injected clock.

## Integration
- Real database in a container (Testcontainers / docker compose), fresh schema via migrations
- Repositories, transactions (rollback on failure), constraints, unique/foreign-key violations
- Migrations: up, down, up again on a fresh DB; backfills on representative synthetic data
- Full HTTP request → response through the app per endpoint: success, validation (400/422),
  authn (401), authz incl. other user's resource (403/404), not found, conflict (409), idempotent replay
- Queues/jobs processed end to end; external services stubbed at HTTP (timeouts, 5xx, retries)
- Events: emitted once, after commit, with the right properties

## Contract
- Every operation touched validated against the OpenAPI: request and response schemas, every
  documented status code, headers, error shape; undocumented fields/codes fail the test
- Use the repo's approach (response-validation middleware in tests, Schemathesis/Dredd, or Pact
  provider verification when consumers publish pacts); if none exists, add schema validation of
  responses in the integration suite (no new dependency without approval)

## Rules
- Each AC / bug / finding → ≥1 test that fails without the change (check by reverting locally)
- Tests isolated (transaction rollback or truncation), no order dependence, no sleeps
- No real third-party calls, no shared environments, synthetic data only
- Test names state behaviour: "returns 409 when the email is already registered"
