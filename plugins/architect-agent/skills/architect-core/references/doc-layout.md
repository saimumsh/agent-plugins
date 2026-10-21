# Shared document layout (contract between agents)

| Artifact | Path | Produced by | Consumed by |
|---|---|---|---|
| Requirements Specification | `docs/requirements/REQ-NNNN-<slug>.md` | BA / PM | cto, architect, database |
| Feature List + Acceptance Criteria | `docs/features/features.md` | BA / PM | architect, frontend, backend, qa |
| Wireframes | `docs/ux/wireframes/` (images, PDFs, md) | UX | architect |
| User Journeys | `docs/ux/journeys/*.md` | UX | architect |
| Technical Standards (global) | `docs/standards/_global.md` | cto | architect, techlead, database, developers |
| Technical Standards (feature) | `docs/standards/<feature>.md` | cto | architect, techlead |
| Threat Model | `docs/security/threat-model.md` | security | architect, techlead |
| ADRs | `docs/adr/ADR-NNNN-<slug>.md` | architect | cto |
| ADR Approvals | `docs/adr-approvals/ADR-NNNN-approval.md` | cto | architect |
| Architecture Document | `docs/architecture/architecture.md` | architect | techlead, backend, qa, security, dev, DevOps |
| Data Model | `docs/architecture/data-model.md` | architect | database, backend, dev |
| API Contracts | `docs/architecture/api/<service>.openapi.yaml` | architect | techlead, frontend, backend, dev, QA |
| Feasibility Notes | `docs/architecture/feasibility.md` | architect | PM, cto |
| Prioritized Backlog | `docs/backlog/backlog.md` | PM | techlead |
| Pull Requests (frontend, backend, mobile, AI feature, human) | GitHub / git branches | dev agents, humans | techlead |
| Technical Task Breakdown | `docs/delivery/task-breakdown.md` | techlead | frontend, backend, dev agents, humans |
| Implementation Guidelines | `docs/delivery/implementation-guidelines.md` | techlead | dev agents, humans |
| Code Review Checklist | `docs/delivery/review-checklist.md` | techlead | dev agents, humans |
| Code Review Decisions | `docs/delivery/reviews/PR-<n>-review.md` | techlead | PR authors |
| High-fidelity Designs | `docs/design/hifi/` (images, PDFs, or Figma links in `README.md`) | UI designer | frontend, mobile |
| Design System | `docs/design/system/` (tokens + components docs) | UI designer | frontend, mobile |
| Interaction Specs | `docs/design/interactions/*.md` | UX / UI designer | frontend, mobile |
| Product Visual Assets | `docs/design/assets/` | UI designer | frontend, mobile |
| Event Instrumentation Spec | `docs/analytics/events.md` | product / data analyst | frontend, backend, mobile |
| Bug Reports | `docs/bugs/BUG-NNNN-<slug>.md` or GitHub issues labelled `bug` | qa, users | frontend, backend, other developers |
| Security Findings & Remediation | `docs/security/findings/SEC-NNNN-<slug>.md` (confidential) | security | frontend, backend, other developers |
| Frontend Pull Requests | GitHub, branches `fe/<id>-<slug>` | frontend | techlead |
| Database Schema | `docs/database/schema.md` + the engine's schema file in the repo | database (backend if no database agent) | backend, techlead |
| Migration Scripts | the repo's migrations folder, branches `db/<id>-<slug>` | database (backend if no database agent) | backend, techlead |
| Indexing Notes | `docs/database/indexing-notes.md` | database | backend, techlead |
| Backend Pull Requests | GitHub, branches `be/<id>-<slug>` | backend | techlead |
| Release Candidate | `docs/releases/RC-<version>.md` (tag, build, test env URL, release notes, fixed bugs) | release manager / DevOps | qa, security |
| Coverage Report | CI artifact or `coverage/` (lcov, Cobertura, JaCoCo, json) | CI / developers | qa |
| AI Evaluation Results | `docs/ai/evals/RC-<version>/` | AI feature developer | qa |
| Test Strategy | `docs/qa/test-strategy.md` | qa | team |
| Test Plan | `docs/qa/test-plans/RC-<version>.md` | qa | team |
| Test Summary & Quality Gate Decision | `docs/qa/releases/RC-<version>-summary.md` | qa | release manager, PM, cto |
| Compliance Obligations | `docs/compliance/obligations.md` | legal / compliance / DPO | security, architect |
| Security Gate Decision | `docs/security/releases/RC-<version>-security-gate.md` | security | qa, release manager, cto |

Numbering: take the highest existing NNNN in the folder and add 1; start at 0001.

## Typical loop between agents
1. architect: design + ADRs (`Proposed`) → `AWAITING APPROVAL: cto`
2. cto: approvals for each ADR
3. architect: apply verdicts (revise / replace / apply conditions) → architecture `Baselined`
4. techlead: task breakdown + guidelines/checklist → engineers (AI or human) open PRs
5. techlead: code review decisions → authors fix → re-review; gaps go back to architect / cto
6. frontend: tasks, bugs, security findings → PRs with unit, component, integration tests → techlead review → FIX
7. backend: contract and schema tasks first (unblocks frontend/mobile), then features, bugs, security findings → PRs with unit, integration, contract tests → techlead review → FIX
8. qa: test plan per RC → test → bug reports (to frontend/backend BUG mode) → verify fixes next RC → quality gate GO / GO WITH CONDITIONS / NO-GO
9. security: threat model early (→ architect designs mitigations); per RC: assess → security findings (→ frontend/backend SEC mode) → verify fixes → security gate PASS / PASS WITH EXCEPTIONS / FAIL (→ qa gate)
10. database: data model + requirements + standards → schema, migrations, indexing notes (PR) → techlead review → backend builds on them
