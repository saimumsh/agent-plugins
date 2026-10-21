# Agent plugins: one separate plugin per agent

| Plugin | Agent | Input | Output |
|---|---|---|---|
| `cto-agent` | CTO | Requirements Specification + ADRs | Technical Standards + ADR Approvals |
| `architect-agent` | Solution Architect | Requirements Spec, Feature List + Acceptance Criteria, Wireframes, User Journeys, Technical Standards, Threat Model, ADR Approvals | Architecture Document, Data Model, API Contracts, ADRs, Feasibility Notes |
| `frontend-agent` | Frontend Developer | Task Breakdown, Feature List + Acceptance Criteria, Hi-fi Designs, Design System, Interaction Specs, Visual Assets, API Contracts, Technical Standards, Implementation Guidelines & Review Checklist, Event Instrumentation Spec, Bug Reports, Security Findings & Remediation | Frontend Pull Requests (code + unit, component and integration tests) |
| `backend-agent` | Backend Developer | Task Breakdown, Feature List + Acceptance Criteria, Architecture Document, API Contracts, Database Schema, Technical Standards, Implementation Guidelines & Review Checklist, Event Instrumentation Spec, Bug Reports, Security Findings & Remediation | Backend Pull Requests (code + unit, integration and contract tests) |
| `qa-agent` | QA Engineer | Release Candidate, Feature List + Acceptance Criteria, Architecture Document, AI Evaluation Results, Coverage Report | Test Strategy & Test Plan, Bug Reports, Test Summary & Quality Gate Decision |
| `security-agent` | Security Engineer | Architecture Document, Release Candidate, Compliance Obligations | Threat Model, Security Findings & Remediation, Security Gate Decision |
| `database-agent` | Database Engineer | Data Model, Requirements Specification, Technical Standards | Database Schema, Migration Scripts, Indexing Notes |
| `techlead-agent` | Technical Lead | Architecture Document, API Contracts, Technical Standards, Prioritized Backlog, Frontend / Backend / Mobile / AI Feature / Human Pull Requests | Technical Task Breakdown, Implementation Guidelines & Code Review Checklist, Code Review Decisions |

Each plugin is fully independent: install any one, or all.

## Install
```
/plugin marketplace add /path/to/agent-plugins        # or GitHub: owner/repo
/plugin install cto-agent@agent-plugins
/plugin install architect-agent@agent-plugins
/plugin install techlead-agent@agent-plugins
/plugin install frontend-agent@agent-plugins
/plugin install backend-agent@agent-plugins
/plugin install qa-agent@agent-plugins
/plugin install security-agent@agent-plugins
/plugin install database-agent@agent-plugins
```
Restart Claude Code. Uninstall the older `agent-team` or single `cto-agent` v1/v2 plugins first.

## Commands (5 common per agent, `<agent>` = cto | architect | techlead | frontend | backend | qa | security | database)
| Command | What it does |
|---|---|
| `/<agent>-start` | Start; all prompts route to this agent (stops any other) |
| `/<agent>-stop` | Stop; back to normal Claude |
| `/<agent>-status` | Active agent, installed agents, skill counts, journal |
| `/<agent>-skills` | Learned skills with version and times used |
| `/<agent>-learn` | Force a skill capture |

## Task shortcuts
| Agent | Commands |
|---|---|
| CTO | `/cto-review` |
| Solution Architect | `/architect-design` |
| Technical Lead | `/techlead-plan`, `/techlead-review` |
| Frontend Developer | `/frontend-work`, `/frontend-autopr` |
| Backend Developer | `/backend-work`, `/backend-autopr` |
| QA Engineer | `/qa-plan`, `/qa-test`, `/qa-gate`, `/qa-autoissue` |
| Security Engineer | `/security-model`, `/security-assess`, `/security-gate` |
| Database Engineer | `/database-work`, `/database-autopr` |

Every new session starts with no agent active. Only one agent is active at a time.

## Common features (identical in every plugin, built from src/core)
- start / stop / status / skills / learn commands
- prompt routing hook (routes only when *this* agent is the active one)
- new-session reset and agent registration
- `<agent>-core` skill: RECEIVE → RECALL → PRODUCE → CHECK → LEARN, skill growth rules,
  handoff statuses, report format, shared docs/ layout
- per-agent journal `.claude/agent-team/<agent>/journal.md`
- per-agent skill library `~/.claude/skills/<prefix>-*` (cto-*, sa-*, tl-*, fe-*, be-*, qa-*, sec-*, db-*)

## Full pipeline
```
architect ──ADRs──► cto ──approvals──► architect ──architecture + API contracts──► techlead
                                                                                  │
  frontend + backend agents, others ◄── task breakdown + guidelines/checklist┘
  (+ designs, events, bugs, security findings)
                    │ pull requests with tests
                    └──────────────► techlead ──► code review decisions ──► FIX

data model + requirements + standards ──► database ──► schema, migrations, indexing notes ──► backend

release candidate ──► qa ──► bug reports ──► frontend / backend BUG ──► next RC ──► qa verifies
                      └──► test summary + quality gate: GO / GO WITH CONDITIONS / NO-GO

architecture + compliance ──► security ──► threat model ──► architect designs mitigations
release candidate ──► security ──► security findings ──► frontend / backend SEC ──► verified
                         └──► security gate PASS / PASS WITH EXCEPTIONS / FAIL ──► qa gate
```

## Shared state (how separate plugins cooperate)
`.claude/agent-team/active` holds the name of the active agent. `/x-start` writes its name
(replacing any other), `/x-stop` clears it only if x is active, and each plugin's hook routes
only when its own name is there.

## Project structure
```
src/core/              common features (edit once)
src/agents/<name>/     agent.md, playbook/, task-*.md, meta.env
build.sh               generates plugins/<name>-agent/ + marketplace.json
plugins/               generated, ready to install
```

## Add a new agent (e.g. QA, DevOps, Security)
1. `mkdir src/agents/qa` with:
   - `meta.env`: NAME, PREFIX, TITLE, DESC
   - `agent.md`: frontmatter (name, description with input/output, tools) and
     "read the `qa-core` skill and follow its protocol", plus inputs, outputs, rules
   - `playbook/SKILL.md` + `playbook/templates/` (input checklist, output templates,
     learned-skill template)
   - optional `task-<verb>.md` shortcut command
2. Add its rows to `src/core/skill/references/doc-layout.md`
3. `./build.sh` → a new `plugins/qa-agent/` appears in the marketplace
