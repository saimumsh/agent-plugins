# AI evaluation analysis (for the Test Summary)
1. Confirm the results match the RC: model, prompt versions, eval set version. If not → not evaluated.
2. Per metric (e.g. task accuracy, groundedness/hallucination rate, safety/refusal correctness,
   format validity, latency p95, cost per request): value vs threshold vs baseline (previous release).
3. **Regressions**: any metric worse than baseline beyond the agreed tolerance, even if above threshold.
4. **Slices**: results per important segment (language, user type, input length, edge-case category);
   a pass overall can hide a failing slice.
5. **Sample failures**: read a sample of failed cases; classify (wrong, unsafe, ungrounded, format, refusal);
   critical safety failures are Critical bugs regardless of the aggregate score.
6. **Coverage of the eval set**: does it cover every AI-related AC? Gaps → risks / new eval cases to request.
| Metric | Value | Threshold | Baseline | Δ | Result |
|---|---|---|---|---|---|
