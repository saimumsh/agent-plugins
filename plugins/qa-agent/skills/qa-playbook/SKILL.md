---
name: qa-playbook
description: Templates and checklists for the QA Engineer (qa) agent - input checklist, Test Strategy, Test Plan, test case format, exploratory charter, Bug Report, coverage analysis, AI evaluation analysis, Test Summary and Quality Gate Decision, and the qa-* learned skill template. Use whenever planning testing for a release, executing tests against a release candidate, writing bug reports, analysing coverage or AI eval results, or deciding a quality gate.
---

# QA Playbook

| Step | File |
|---|---|
| Validate inputs | `templates/input-checklist.md` |
| Test Strategy (per product) | `templates/test-strategy.md` |
| Test Plan (per RC) | `templates/test-plan.md` |
| Exploratory session | `templates/exploratory-charter.md` |
| Bug Report | `templates/bug-report.md` |
| Coverage analysis | `templates/coverage-analysis.md` |
| AI evaluation analysis | `templates/ai-eval-analysis.md` |
| Test Summary & Quality Gate Decision | `templates/test-summary.md` |
| New learned skill (qa-*) | `templates/learned-skill.md` |

IDs: test cases `TC-NNN`, charters `EX-NN`, bugs `BUG-NNNN` (shared numbering in `docs/bugs/`),
release candidates `RC-<version>`.

## Useful commands
```
curl -s -o /dev/null -w "%{http_code} %{time_total}\n" <rc-url>/health
npx playwright test --reporter=list            # if the repo has e2e tests; base URL = RC env
npx @axe-core/cli <rc-url>/<page>               # accessibility smoke, if available
gh issue create --title "BUG-NNNN: ..." --body-file docs/bugs/BUG-NNNN-<slug>.md --label bug  # only if allowed
```
