# Bug fix: BUG-NNNN <title>
**Severity:** Critical | High | Medium | Low   **Reported in:** <env, browser, device>

1. **Reproduce**: follow the steps; note exact conditions. Can't reproduce → QUESTIONS (what you tried).
2. **Failing test**: write the test that reproduces it at the lowest layer that can (unit → component → integration). It must fail now.
3. **Root cause**: explain why it happens in 1–3 sentences (not just where).
4. **Fix** the cause, minimal and in scope.
5. **Verify**: the new test passes; the full suite passes; manual check of the reported steps.
6. **Sweep**: search for the same pattern elsewhere; fix in this PR if small, otherwise list it.
7. **PR**: link BUG-NNNN; include root cause, test name, and before/after screenshots if visual.
