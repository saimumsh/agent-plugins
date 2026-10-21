# Coverage analysis (for the Test Summary)
1. Confirm the report matches the RC build (commit/date). If not → criterion not evaluated.
2. Parse the format (lcov `SF/LH/LF/BRH/BRF`, Cobertura `line-rate/branch-rate`, JaCoCo counters, coverage.json totals).
3. Report overall line and branch coverage per service/package vs QG-4.
4. **Changed-code coverage** vs QG-5: diff the RC against the previous release tag and compute coverage of changed lines.
5. **Risk mapping**: list uncovered or weakly covered files in high-risk components (architecture) and
   which ACs they implement; these drive extra end-to-end/exploratory testing and are reported as risks.
6. Coverage is necessary, not sufficient: high coverage with failing ACs is still NO-GO.
| Scope | Line % | Branch % | Changed-code % | Threshold | Result |
|---|---|---|---|---|---|
