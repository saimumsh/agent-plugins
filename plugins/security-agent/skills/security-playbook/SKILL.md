---
name: security-playbook
description: Templates and checklists for the Security Engineer (security) agent - input checklist, Threat Model, STRIDE checklist, compliance matrix, assessment plan, Security Finding & Remediation, severity and SLA rules, Security Gate Decision, and the sec-* learned skill template. Use whenever threat modelling, reviewing code or a release for vulnerabilities, writing security findings, mapping compliance obligations to controls, or deciding a security gate.
---

# Security Playbook

| Step | File |
|---|---|
| Validate inputs | `templates/input-checklist.md` |
| Threat Model | `templates/threat-model.md` |
| STRIDE per element | `templates/stride-checklist.md` |
| Compliance obligations → controls | `templates/compliance-matrix.md` |
| Plan an assessment | `templates/assessment-plan.md` |
| Security Finding & Remediation | `templates/security-finding.md` |
| Severity & SLA | `templates/severity-and-sla.md` |
| Security Gate Decision | `templates/security-gate.md` |
| New learned skill (sec-*) | `templates/learned-skill.md` |

IDs: threats `T-NN`, findings `SEC-NNNN`, obligations `OB-NN`, controls `CTL-NN`, risk acceptances `RA-NN`.

## Useful commands (use what's available; never against production)
```
semgrep scan --config auto --error .                  # SAST
npm audit --omit=dev --json | pnpm audit | pip-audit | osv-scanner -r .   # dependencies
gitleaks detect --redact -v                           # secrets, incl. history (redacted output)
curl -sI https://<rc-test-env>/ | grep -iE 'strict-transport|content-security|x-frame|x-content-type|referrer|permissions'
curl -s -o /dev/null -w '%{http_code}\n' -H "Authorization: Bearer <test-user-B>" https://<rc-test-env>/v1/<resource-of-user-A>   # authz check
```
