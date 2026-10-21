# Migration safety
## Always
- One logical change per migration; descriptive name; never edit merged migrations
- Reversible `down` (or documented rollback); up → down → up on a fresh local DB
- Synthetic seeds only, local/test only; no data changes mixed into schema migrations unless required
- Migration plan in the PR: steps, release each ships in, backfill, rollback, lock impact

## Expand → migrate → contract (breaking changes)
1. Expand: add new column/table (nullable / with default that doesn't rewrite), deploy code that writes both
2. Migrate: backfill in batches (idempotent, resumable, throttled), verify counts
3. Switch reads to the new structure
4. Contract (later release): add constraints, drop old column/table

## PostgreSQL specifics
- `CREATE INDEX CONCURRENTLY` / `DROP INDEX CONCURRENTLY` (outside a transaction; tool-specific flag)
- Add FK / CHECK as `NOT VALID`, then `VALIDATE CONSTRAINT` separately
- `SET NOT NULL` on big tables: first add `CHECK (col IS NOT NULL) NOT VALID`, validate, then set NOT NULL
- Avoid column type changes that rewrite the table; add a new column instead
- Set `lock_timeout` and `statement_timeout` in migrations touching hot tables
- Adding a column with a constant default is fast (PG 11+); volatile defaults rewrite the table
## MySQL specifics
- Prefer `ALGORITHM=INPLACE, LOCK=NONE` / INSTANT where supported; check online DDL support per operation
- Large changes: online schema change tools (gh-ost / pt-osc) only if the standards allow
## Document stores (e.g. MongoDB)
- Schema changes as versioned scripts; validators updated with `validationLevel: moderate` first
- Index builds on large collections planned; backfills batched by `_id` range

## Backfills & data repair
- Batched (e.g. 1–10k rows), keyset-paginated, idempotent, resumable, logged counts, dry-run default
