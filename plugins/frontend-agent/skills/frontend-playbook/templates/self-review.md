# Self-review (all must pass before the PR)
## Scope & contract
- [ ] Does exactly the task/bug/finding, nothing more; links its ID
- [ ] Every API call matches the OpenAPI (paths, params, schemas, status codes, error shape) via the generated client
- [ ] Meets the Technical Standards cited for this area (STD-*)
## Design fidelity
- [ ] Matches hi-fi designs at every breakpoint; only design tokens and design-system components
- [ ] All states and interactions per the interaction spec; assets final or listed as TODO(asset)
## Quality
- [ ] Accessibility: roles, labels, keyboard, focus, contrast, reduced motion; axe clean
- [ ] Events exactly per spec; no PII
- [ ] No secrets/PII; untrusted data never rendered as HTML
- [ ] No new dependency without approval; no dead code, console logs, or TODOs without an issue
## Tests
- [ ] Unit + component + integration added; each AC/bug/finding has a test that fails without the change
- [ ] Lint, type-check, tests, build all green
## Techlead checklist
- [ ] CR-ALL, CR-FE and CR-BOT items all pass
- [ ] Every pitfall in the fe-* skills used was checked
