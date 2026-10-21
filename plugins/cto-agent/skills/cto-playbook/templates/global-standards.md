# Global Technical Standards

> Starter set. Review and edit: every ADR is approved against these.

## Stack
Approved languages/frameworks: <fill in>. Anything new needs an ADR.

## Security
No secrets in code. Validate input at boundaries. Least privilege. Passwords: argon2id or bcrypt.
TLS everywhere. Dependencies scanned in CI.

## API
Versioned (`/v1`), consistent error shape, idempotency for payment/mutation endpoints that may retry.

## Data
Versioned, reversible migrations. PII identified, minimized, encrypted at rest.

## Reliability & observability
Structured logs without PII. Errors tracked. Key flows have metrics and alerts.

## Testing
Acceptance criteria are covered by automated tests. CI must pass before merge.

## Third parties
New paid/external services need an ADR and human approval.
