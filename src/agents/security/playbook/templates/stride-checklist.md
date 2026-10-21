# STRIDE per element
| Element | S Spoofing | T Tampering | R Repudiation | I Info disclosure | D Denial of service | E Elevation of privilege |
|---|---|---|---|---|---|---|
| External entity (user, partner) | ✓ | | ✓ | | | |
| Process (service, function, AI agent) | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Data store (DB, cache, bucket, logs) | | ✓ | ✓* | ✓ | ✓ | |
| Data flow (API call, queue, webhook) | | ✓ | | ✓ | ✓ | |
(*logs/audit stores)

Prompts per category:
- **S**: authentication strength, session handling, token theft/replay, webhook signature verification, service-to-service identity
- **T**: input validation, integrity of data at rest/in transit, mass assignment, client-side trust, supply chain
- **R**: audit logs for security-relevant actions, tamper resistance, time sync
- **I**: authz/IDOR, verbose errors, PII in logs/analytics/AI prompts, caching of private data, encryption at rest/in transit, secrets exposure
- **D**: rate limits, resource limits (upload size, query cost, AI token cost), queue flooding, expensive endpoints
- **E**: role checks server-side, admin paths, tenant isolation, container/IAM privileges, prompt injection leading to tool misuse
AI features additionally: prompt injection (direct/indirect), data leakage via outputs, excessive agency, insecure output handling (OWASP LLM Top 10).
