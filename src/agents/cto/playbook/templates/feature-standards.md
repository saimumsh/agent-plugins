# Technical Standards: <Feature>

**Derived from:** REQ-NNNN, ADR-NNNN  **Date:** YYYY-MM-DD  **Issued by:** CTO agent
**Applies to:** every implementation of this feature. Global rules in `_global.md` also apply.

| ID | Area | Standard (measurable) | Source | How to verify |
|---|---|---|---|---|
| STD-<F>-01 | Security | e.g. Passwords hashed with argon2id (m=64MB, t=3) | NFR-2, _global | Unit test + code review |
| STD-<F>-02 | Performance | e.g. Login p95 < 300 ms at 100 rps | NFR-1 | Load test |
| STD-<F>-03 | Testing | Tests cover AC-1..AC-n | Spec ACs | CI |

## Proposed additions to global standards
- (none) / rule + reason
