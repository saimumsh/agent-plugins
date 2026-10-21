# Bug fix: BUG-NNNN <title>
**Severity:** Critical | High | Medium | Low   **Environment / logs / trace id:** ...   **Data impact:** none | possible | confirmed

1. **Reproduce** locally with synthetic data; never against shared environments. Can't → QUESTIONS (what you tried).
2. **Failing test** at the lowest layer that can show it (unit → integration → contract). It must fail now.
3. **Root cause** in 1–3 sentences (why, not just where).
4. **Fix** the cause, minimal and in scope.
5. **Data repair** if data was corrupted: idempotent migration or script, dry-run by default, counts logged; call it out at the top of the PR.
6. **Verify**: new test passes; full suite and migrations up/down pass.
7. **Sweep** for the same pattern; fix if small, otherwise list it.
8. **PR**: link BUG-NNNN; root cause, test name, data impact and repair steps.
