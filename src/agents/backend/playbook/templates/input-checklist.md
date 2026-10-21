# Input checklist
- [ ] Task T-NNN: track BE, touches (components / API operations / entities), dependencies, acceptance checks
- [ ] Feature + ACs for the task
- [ ] Architecture Document: components, boundaries, runtime flow for this feature, cross-cutting concerns
- [ ] API Contracts: every operation in scope with params, schemas, all status codes, error shape, auth
- [ ] Database Schema: entities, types, constraints, indexes, PII classification, retention; current migrations
- [ ] Technical Standards: `_global.md` + feature standards (e.g. STD-AUTH-*, STD-PAY-*)
- [ ] Implementation Guidelines (G-GEN, G-API, G-BE, G-TEST) + Review Checklist (CR-ALL, CR-BE, CR-BOT)
- [ ] Event Instrumentation Spec: server-side events (name, trigger, properties, PII flag, delivery guarantee)
- [ ] BUG mode: steps, expected vs actual, environment, logs/trace IDs, severity, data impact
- [ ] SEC mode: finding ID, severity, affected code, required remediation, verification
Record an assumption for every gap you continue past; conflicts between contract, schema,
architecture and ACs go in the PR under "Questions for reviewers" (or stop if they block).
