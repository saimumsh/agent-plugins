# Database migrations
- One migration per logical change, named `<timestamp>_<what>`; never edit a migration that has been merged
- Match the Database Schema exactly: types, nullability, defaults, constraints, indexes, FKs
- Reversible: a working `down`, or a documented reason it can't be (then flag `migration` + explain)
- Breaking changes use **expand → migrate → contract** across releases:
  add new column/table → dual-write/backfill → switch reads → remove old in a later PR
- No destructive change (drop/rename column, tighten NOT NULL) in the same release as code that stops using it
- Large tables: create indexes concurrently / online where the DB supports it; batch backfills; avoid long locks
- Backfills idempotent and resumable; data-repair scripts default to dry-run and log counts
- PII columns: classification and encryption per the schema/standards; retention jobs where specified
- Seeds are synthetic and only for local/test
- Verify: up → down → up on a fresh local DB; app tests pass on the migrated schema
