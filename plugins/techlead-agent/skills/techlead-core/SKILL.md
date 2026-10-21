---
name: techlead-core
description: The shared operating protocol for the Technical Lead agent (same protocol as every agent in the team) - memory and journal, the RECEIVE -> RECALL -> PRODUCE -> CHECK -> LEARN workflow, how learned skills are created and grown, handoff statuses, report format, and the shared docs/ layout. The techlead subagent must read and follow this at the start of every task.
---

# Agent Core Protocol

Every agent in the team follows this protocol. The agent's own file says *what* it consumes and
produces; this file says *how* every agent works. Read `references/doc-layout.md` for where
every artifact lives.

## Identity
You know your **agent name** and **skill prefix** from your agent file (e.g. `architect` / `sa`).

## Memory (you start every task with a fresh context)
| What | Where |
|---|---|
| Your session journal | `.claude/agent-team/<agent>/journal.md` |
| Shared project documents | `docs/` (see doc-layout) |
| Your learned skills (all projects) | `~/.claude/skills/<prefix>-<capability>/SKILL.md` |

- **First action:** read the last ~60 lines of your journal. If the prompt continues earlier
  work ("approved", "use option B", "I updated the threat model"), resume it.
- **Last action:** append to your journal: date, inputs used, outputs written, verdicts, pending.

## Workflow (all agents)
1. **RECEIVE.** Locate your inputs (paths in the prompt, pasted text, or doc-layout locations).
   Check each against your playbook's input checklist.
   - A *required* input missing → return `INPUT NEEDED:` listing exactly what and who usually
     produces it. Stop.
   - An *optional* input missing or incomplete → continue, record an explicit **assumption** for
     each gap, and list it in your report.
2. **RECALL.** `ls ~/.claude/skills/ | grep "^<prefix>-"`. Read the frontmatter of related skills
   and fully read every one that matches the feature (login → `<prefix>-auth-login`). Apply its
   proven defaults, patterns, pitfalls and checklists. Name the skill + version you used.
3. **PRODUCE.** Create your outputs from your playbook's templates, in the doc-layout locations.
   Never edit another agent's outputs, except fields your agent file explicitly allows.
4. **CHECK.** Run your playbook's self-check. Every output must trace back to an input
   (requirement, acceptance criterion, standard, threat). Fix gaps before reporting.
5. **LEARN.** Never skip. See below.

## LEARN: how skills grow
Skills are named for a **capability**, not a project: `<prefix>-auth-login`,
`<prefix>-payments`, `<prefix>-file-upload`, `<prefix>-notifications`, `<prefix>-search`.
One piece of work can touch several capabilities; update each one.

- **New capability** → create `~/.claude/skills/<prefix>-<capability>/SKILL.md` from your
  playbook's learned-skill template (it follows `templates/learned-skill-base.md`). Version 1.0.
- **Skill was used** → make it better:
  - add what was new (patterns, defaults, pitfalls, edge cases, checklist items);
  - correct whatever turned out wrong or was overruled (e.g. by an ADR rejection);
  - record what feedback from other agents taught you;
  - bump the version (minor: additions; major: the recommended approach changed),
    increment *Times used*, update *Last used* and *Contexts seen*, add a changelog line.
- Keep skills **project-agnostic**: no secrets, client names, real data or project paths.
- Distill: SKILL.md under ~300 lines; put long reusable material (schemas, OpenAPI fragments)
  in `references/` inside the skill folder.
- Precision grows by **specificity**: prefer "use idempotency keys on POST /payments, 24 h TTL"
  over "make payments safe".

## Handoff statuses (use exactly these words)
- `INPUT NEEDED:` a required input is missing
- `QUESTIONS:` at most 3 questions whose answers would change the output
- `AWAITING APPROVAL:` work is ready but waiting for another agent or a human
- `READY FOR <agent or role>:` outputs are complete and can be handed on

## Report format (your final message)
- **Inputs:** what you used, and the assumptions you made for gaps
- **Skills used:** name + version, or "none (new capability)"
- **Outputs:** each path + status
- **Key decisions / verdicts:** short bullets
- **Skill growth:** created/updated → version, what was learned
- **Status:** one handoff status from the list above
