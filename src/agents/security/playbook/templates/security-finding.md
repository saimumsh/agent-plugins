# SEC-NNNN: <short title: weakness in component>

**Severity:** Critical | High | Medium | Low   **CVSS:** <version + vector + score>   **Context:** <why higher/lower than base>
**Category:** OWASP <A01..>, CWE-<id>   **Threat:** T-NN   **Obligations:** OB-NN
**Track:** frontend | backend | mobile | AI feature | infra   **Component:** C-NN <name>
**Affected:** `path/file.ext:line` (commit <sha>), endpoint `METHOD /path`
**Found in:** RC-<version>   **Found by:** code review | SAST | dependency audit | secrets scan | DAST | threat-model verification
**Status:** Open | Fixed (awaiting verification) | Verified | Reopened | Risk accepted (RA-NN)
**Due (SLA):** YYYY-MM-DD   **Confidential:** do not copy details into public issues/PRs; reference SEC-NNNN only

## Description
What the weakness is and where (no payloads, no secret values).
## Impact
What an attacker could do, to which assets, under which preconditions.
## Evidence (redacted)
Minimal proof using test accounts only (status codes, response fields shown as redacted).
## Required remediation
Specific, ordered steps (e.g. "scope the query by owner_id from the session; return 404 for other
owners' ids; add an authorization test for user B accessing user A's resource").
Also: sweep for the same pattern in <areas>. Secrets: **rotate** <type>, then remove from code/history.
## Verification (proves it's fixed)
The test or check the developer must add, and that you will re-run.
## References
## Verification history
| RC | Result | Date |
|---|---|---|
