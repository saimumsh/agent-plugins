# Server-side event instrumentation
- Exactly the event names, triggers, properties and types from the spec; no extras
- Emit through the project's event/analytics wrapper or outbox; never a vendor SDK directly
- Emit **after the transaction commits** (outbox pattern where the spec requires guaranteed delivery)
- Idempotent: an event id / dedupe key so retries don't double-count
- No PII unless the spec and standards explicitly allow it; never secrets or tokens
- Include required context (tenant, request/trace id) as specified
- Tests: unit for the payload, integration that it's emitted once after commit and not on rollback
