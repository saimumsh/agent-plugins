# Test Strategy: <Product>
**Version:** 0.1  **Date:** YYYY-MM-DD  **Sources:** features vX, architecture vX, standards

## Scope & quality goals
## Risk model
| Area (from architecture) | Impact | Likelihood | Risk | Test depth |
|---|---|---|---|---|
| Payments flow | High | Medium | High | full + exploratory + regression every RC |

## Test levels & ownership
| Level | Owner | Where | Purpose |
|---|---|---|---|
| Unit / component | developers | CI | logic, states |
| Integration / contract | developers | CI | APIs, DB, contracts |
| End-to-end (critical flows) | QA | RC env | user journeys |
| Exploratory | QA | RC env | unknown unknowns |
| Accessibility, performance smoke, security smoke, compatibility | QA | RC env | NFRs |
| AI evaluation | AI developer + QA review | CI / eval harness | quality, safety, regressions |

## Environments, test data, accounts
## Tools
## Severity & priority definitions
| Severity | Meaning |
|---|---|
| Critical | data loss/corruption, security breach, outage, core flow blocked for all users, no workaround |
| High | core flow broken for some users or major feature unusable; workaround hard |
| Medium | feature partly wrong; reasonable workaround |
| Low | cosmetic, copy, minor UX |
Priority (P0–P3) = urgency to fix, set with the PM.

## Quality gate criteria
| ID | Criterion | Threshold |
|---|---|---|
| QG-1 | P0/P1 acceptance criteria passed | 100% |
| QG-2 | P2/P3 acceptance criteria passed | ≥ 95%, failures have bugs ≤ Medium |
| QG-3 | Open Critical/High bugs | 0 |
| QG-4 | Line / branch coverage (per standards) | ≥ <x>% / ≥ <y>% |
| QG-5 | Coverage of changed code | ≥ <z>% |
| QG-6 | AI eval metrics vs thresholds; no regression vs baseline beyond tolerance | all pass |
| QG-7 | Accessibility on key flows | WCAG 2.2 AA, 0 critical axe issues |
| QG-8 | Performance smoke vs NFR | within targets |
| QG-9 | Security: security smoke passes and the Security Gate Decision (`docs/security/releases/`) is PASS or PASS WITH EXCEPTIONS, if a security agent is in the team | pass |
| QG-10 | Critical flows tested end to end | 100% |
Mandatory criteria not evaluated → NO-GO. Waivers only by a named human.
