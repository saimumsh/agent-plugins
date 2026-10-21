# Security remediation: SEC-NNNN
**Severity:** Critical | High | Medium | Low   **Category:** e.g. injection, broken authz/IDOR, SSRF, auth/session, secrets, CVE

1. Apply the required remediation (or a stronger one, with reasons). Common backend fixes:
   - Injection: parameterized queries / ORM bindings only; no string-built SQL, shell or LDAP
   - Broken access control / IDOR: authorization check on every operation, scoped queries (`WHERE owner_id = :user`), deny by default
   - Mass assignment: explicit allow-listed input DTOs
   - SSRF: allow-list outbound hosts; block internal ranges and redirects
   - Auth/session: standards-compliant hashing, token expiry/rotation, constant-time comparisons
   - Secrets: remove from code and history guidance (rotate! say so), load from config/secret manager
   - Deserialization / file upload: type and size checks, no unsafe deserializers, store outside web root
   - Rate limiting / brute force: per the standards
   - Dependency CVE: upgrade to the fixed version; check for breaking changes
2. Test proving the vulnerability is closed (e.g. another user's id returns 404/403).
3. Sweep the codebase for the same pattern; fix or list.
4. PR text: reference SEC-NNNN only; **no exploit steps or payloads**. Label `security`.
5. If a secret was exposed: state that rotation is required (you can't rotate it yourself).
6. Record the pattern in `be-security` (pitfall + self-review item).
