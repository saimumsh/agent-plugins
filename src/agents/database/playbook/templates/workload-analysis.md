# Workload analysis
**Sources:** REQ-NNNN, API contracts vX, architecture flows   **Horizon:** now / 12 months / 24 months

## Volumes
| Table/entity | Rows now | Rows 12m | Rows 24m | Row size est. | Growth driver |
|---|---|---|---|---|---|

## Access patterns
| AP | Operation (endpoint / job) | Query shape (filter, sort, join, limit) | Read/Write | Frequency (per s/day) | Latency target | Notes |
|---|---|---|---|---|---|---|
| AP-01 | GET /v1/orders?status=&cursor= | WHERE user_id=? AND status=? ORDER BY created_at DESC LIMIT 20 | R | 50/s | p95 < 50 ms | cursor pagination |

## Hot spots & contention (counters, queues, sequences, popular rows)
## Retention, archival, deletion workloads
