## T-NNN | BUG-NNNN | SEC-NNNN: <title>

**What & why:** one or two sentences.
**Task / feature / ACs:** T-NNN · F-NN · AC-NN.1..n   **Architecture:** §<section>   **ADRs:** ADR-NNNN

### Changes
- Endpoints: `METHOD /path` ...
- Data: migrations `<name>` (reversible: yes/no), entities touched
- Events: ...

### Acceptance criteria → tests
| AC / item | Test (layer) |
|---|---|
| AC-NN.1 | `sessions.int.test.ts` "returns 401 for wrong password" (integration) |

### Contract coverage
| Operation | Status codes verified |
|---|---|
| POST /v1/sessions | 201, 400, 401, 429 |

### Migration & rollout notes
Order of deploy, backfills, feature flags, rollback steps. **Data repair:** none / details.

### Checks
- [x] lint  - [x] type-check  - [x] unit  - [x] integration  - [x] contract  - [x] migrations up/down  - [x] build  - [x] self-review

### Assumptions / Questions for reviewers
### Unblocks
Frontend/mobile tasks that can now switch from mocks to the real API: T-NNN, ...

---
AI-authored by the Backend Developer agent. Skills used: be-x vX.Y.
