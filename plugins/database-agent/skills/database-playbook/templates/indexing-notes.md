# Indexing Notes
**Version:** 0.1  **Date:** YYYY-MM-DD  **Engine:** <engine/version>  **Test volume:** <rows per table, synthetic>

## Index catalogue
| IX | Table | Definition | Type | Serves (AP) | Column order rationale | Selectivity | Write / size cost | Evidence |
|---|---|---|---|---|---|---|---|---|
| IX-01 | orders | (user_id, status, created_at DESC) | B-tree | AP-01 | equality cols first, then sort | high | +1 index on 50 writes/s, ~120 MB at 24m | plan: Index Scan, 0.4 ms (was Seq Scan 180 ms) |

## Access patterns without a dedicated index (and why)
## Indexes deliberately not created / removed (redundant, low selectivity, write-heavy table)
## Query plans (EXPLAIN ANALYZE, synthetic data at projected volume)
```
<plan before>
<plan after>
```
## Uniqueness & integrity indexes (backing constraints)
## Monitoring recommendations
Slow-query threshold, unused-index check, bloat/vacuum, plan regressions after volume growth.
