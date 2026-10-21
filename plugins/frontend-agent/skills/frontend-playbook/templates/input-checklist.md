# Input checklist
- [ ] Task T-NNN: track FE, touches, dependencies done (or mocked), acceptance checks
- [ ] Feature + ACs for the task
- [ ] API Contracts: every operation the task calls exists, with request/response/error schemas
- [ ] Technical Standards: `_global.md` + feature standards
- [ ] Implementation Guidelines (G-FE, G-API, G-TEST) + Review Checklist (CR-ALL, CR-FE, CR-BOT)
- [ ] Hi-fi designs for every screen/state in scope, all breakpoints
- [ ] Design System: tokens (colour, type, spacing, radius, shadow, motion) + components
- [ ] Interaction Specs: transitions, validation rules and timing, motion, keyboard behaviour
- [ ] Visual assets: every icon/image/illustration in the designs, in the right formats/sizes
- [ ] Event Instrumentation Spec: events for this feature (name, trigger, properties, PII flag)
- [ ] BUG mode: steps to reproduce, expected vs actual, environment, severity
- [ ] SEC mode: finding ID, severity, affected code, required remediation, verification
Record an assumption for every gap you continue past; conflicts between designs, specs and
contracts go in the PR description under "Questions for reviewers".
