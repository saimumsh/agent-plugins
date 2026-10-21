# Security remediation: SEC-NNNN
**Severity:** Critical | High | Medium | Low   **Category:** e.g. XSS, token storage, open redirect, CSRF, dependency CVE

1. Apply the required remediation (or a stronger one, with reasons). Common frontend fixes:
   - XSS: no `dangerouslySetInnerHTML`/`v-html` on untrusted data; sanitize (approved library) if HTML is required
   - Tokens: no tokens in localStorage if standards require httpOnly cookies; no tokens in URLs or logs
   - Redirects: allow-list destinations
   - Dependencies: upgrade to the fixed version; check the changelog for breaking changes
   - CSP/headers: coordinate with backend/DevOps if not frontend-owned (say so)
2. Test that proves the vulnerability is closed (e.g. a script payload renders as text).
3. Sweep the frontend for the same pattern; fix or list.
4. PR text: reference SEC-NNNN only; **no exploit steps or payloads**. Label `security`.
5. Record the pattern in `fe-security` (pitfall + self-review item).
