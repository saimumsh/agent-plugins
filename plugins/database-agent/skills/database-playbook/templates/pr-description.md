## <id>: <schema change title>

**What & why:** one or two sentences.   **Data Model:** vX   **Requirements:** REQ-NNNN (NFR-n)

### Schema changes
| Table | Change | Reason |
|---|---|---|

### Migrations
| Migration | Reversible | Online-safe notes | Ships in release |
|---|---|---|---|

### Migration plan
Order, expand/migrate/contract steps, backfills (batch size, duration estimate at projected volume),
rollback, expected locks. **Data repair:** none / details (dry-run default).

### Indexes
| IX | Serves | Evidence |
|---|---|---|

### Checks
- [x] up → down → up on fresh local DB  - [x] schema matches schema.md  - [x] linter  - [x] self-check

### For backend
Tables/columns now available, constraints they must expect (unique violations, FK errors), and query shapes the indexes assume.

---
AI-authored by the Database Engineer agent. Skills used: db-x vX.Y.
