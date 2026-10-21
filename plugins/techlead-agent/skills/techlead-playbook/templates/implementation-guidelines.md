# Implementation Guidelines

**Version:** 0.1  **Date:** YYYY-MM-DD  **Sources:** architecture vX, API contracts, standards, ADRs

## G-GEN: General
- G-GEN-01 Repository layout and module boundaries (cite architecture §6)
- G-GEN-02 Branching, commit messages, PR size (≤ ~400 lines), PR links its task T-NNN
- G-GEN-03 Error handling and logging (cite STD-*)
- G-GEN-04 Configuration and secrets

## G-API: Contracts
- G-API-01 Contract first: clients and server stubs generated from the OpenAPI; never hand-edit generated code
- G-API-02 Breaking changes require a new version and an ADR

## G-BE: Backend
## G-FE: Frontend
## G-MOB: Mobile
## G-AI: AI features
- Prompts versioned in the repo; no user PII sent to models unless the standards allow it
- Prompt-injection defences on any untrusted input; output validated before use
- Timeouts, retries, fallbacks, cost and token limits; usage logged
- An eval set with pass thresholds runs in CI for every prompt/model change

## G-TEST: Testing
Unit, integration, contract tests; coverage of acceptance criteria.

## Definition of Done
- [ ] Task acceptance checks pass  - [ ] Tests added and green in CI  - [ ] Contract tests pass
- [ ] Review checklist passed  - [ ] Docs/changelog updated  - [ ] No new security findings
