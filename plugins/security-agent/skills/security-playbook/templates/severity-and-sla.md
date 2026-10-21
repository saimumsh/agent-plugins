# Severity & remediation SLA (defaults; confirm with the CTO and record changes in the strategy)
| Severity | Typical examples | Remediation SLA | Release impact |
|---|---|---|---|
| Critical | auth bypass, RCE, SQLi with data access, exposed production secret, cross-tenant data access | fix before release; hotfix within 7 days if already live | blocks release |
| High | IDOR on personal data, stored XSS, missing authz on admin function, Critical/High exploitable dependency | before release or 30 days with risk acceptance | blocks unless risk accepted |
| Medium | reflected XSS needing interaction, missing rate limit on non-critical endpoint, weak headers | 90 days | allowed within SLA |
| Low | info leak of versions, minor hardening | next planned work | allowed |
Adjust by context: exploitability, exposure (internet/internal), data sensitivity, compensating controls.
Never inflate or deflate severity to fit a schedule.
