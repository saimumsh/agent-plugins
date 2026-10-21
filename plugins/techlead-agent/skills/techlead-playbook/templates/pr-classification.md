# PR classification

## Track (one or more): from changed paths, labels, and description
| Track | Typical signals |
|---|---|
| Frontend | `web/`, `frontend/`, `apps/web`, `*.tsx/*.vue/*.svelte`, CSS, label `frontend` |
| Backend | `api/`, `server/`, `services/`, migrations, `*.go/*.py/*.java/*.cs`, label `backend` |
| Mobile | `ios/`, `android/`, `mobile/`, `*.swift/*.kt/*.dart`, React Native, label `mobile` |
| AI feature | LLM/ML calls, prompts, `ai/`, `prompts/`, embeddings, vector store, model config, evals |
| Infra (extra) | Dockerfile, CI, IaC (`terraform/`, `k8s/`) |

## Author
| Author | Signals |
|---|---|
| AI agent | bot account, `Co-Authored-By:` an AI, "Generated with ..." trailer, agent branch prefix, label `ai-generated` |
| Human | everything else (when unsure: treat as human, apply the AI-authored section too) |

Record: `Tracks: [..]  Author: human|AI  Task: T-NNN (or "none linked")  Size: files/lines`
PRs over ~400 changed lines or with no linked task → a finding (split / link it).
