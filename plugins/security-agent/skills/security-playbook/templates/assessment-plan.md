# Assessment plan: RC-<version>
**Commit:** <sha>  **Environment (in scope):** <url>  **Out of scope:** production, third parties, <...>
**Test accounts:** A (role), B (role)   **Window:** <dates>   **Skills used:** sec-x vX.Y
## Changes since last assessment (release notes, new components/flows)
## Priorities (from threat model: highest-risk threats in scope)
## Methods
| Method | Tool / approach | Scope | Done? |
|---|---|---|---|
| Threat-model mitigation verification | manual + tests | T-NN in scope | |
| Code review (high-risk areas) | manual | auth, authz, input, upload, crypto, AI | |
| SAST | semgrep / bandit / gosec | repo at <sha> | |
| Dependency audit | npm/pip audit, osv-scanner | lockfiles | |
| Secrets scan | gitleaks (redacted) | repo + history | |
| IaC / container config | manual / checkov / trivy config | infra code | |
| Light DAST | curl / browser | headers, TLS, cookies, CORS, authz A↔B, errors, rate limit | |
| Fixed-finding verification | per finding's verification | SEC-NNNN list | |
