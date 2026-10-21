# Input checklist
- [ ] Release Candidate: version/tag, build id, **test environment URL** (not production), release notes, fixed bugs, known issues, test accounts
- [ ] Feature List + ACs: every feature in the RC has testable ACs and a priority (P0..P3)
- [ ] Architecture Document: components, integrations, critical flows, NFR targets
- [ ] Coverage Report: format, scope (which repos/services), date matches the RC build
- [ ] AI Evaluation Results (if AI features): eval set, metrics, thresholds, baseline, model/prompt versions matching the RC
Anything that doesn't match the RC build (old coverage, eval of another prompt version) counts as missing.
