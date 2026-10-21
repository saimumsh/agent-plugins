---
name: database-playbook
description: Templates and checklists for the Database Engineer (database) agent - input checklist, workload analysis, Database Schema document, naming conventions, migration safety rules per engine, Indexing Notes, self-check, PR description, review fix response, and the db-* learned skill template. Use whenever designing a physical database schema, writing or reviewing migrations, choosing indexes, analysing query plans, or planning backfills and zero-downtime schema changes.
---

# Database Playbook

| Step | File |
|---|---|
| Validate inputs | `templates/input-checklist.md` |
| Access patterns & volumes | `templates/workload-analysis.md` |
| Database Schema document | `templates/schema.md` |
| Naming conventions (default) | `templates/naming-conventions.md` |
| Migration safety | `templates/migration-safety.md` |
| Indexing Notes | `templates/indexing-notes.md` |
| Self-check | `templates/self-check.md` |
| PR description | `templates/pr-description.md` |
| Responding to a review | `templates/fix-response.md` |
| New learned skill (db-*) | `templates/learned-skill.md` |

IDs: access patterns `AP-NN`, indexes `IX-NN`, migration steps `M-NN`.

## Useful commands (local database only)
```
docker run -d --name db-local -e POSTGRES_PASSWORD=local -p 5432:5432 postgres:16
<migrate up> && <migrate down> && <migrate up>          # fresh DB
pg_dump --schema-only -d <local> > /tmp/schema.sql      # compare with docs/database/schema.md
psql -d <local> -c "INSERT INTO t SELECT ... FROM generate_series(1, 1000000);"   # synthetic volume
psql -d <local> -c "EXPLAIN (ANALYZE, BUFFERS) SELECT ..."
npx squawk-cli migrations/*.sql                          # Postgres migration linter, if usable
```
