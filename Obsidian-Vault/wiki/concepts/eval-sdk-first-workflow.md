---
title: Eval SDK-First Workflow
category: concepts
tags:
- evals
- sdk
- development-workflow
- braintrust
- ci-cd
sources:
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/eval-playground-experiment-workflow|Eval Playground vs Experiments Workflow]]'
  type: complements
- target: '[[concepts/eval-driven-development|Eval-Driven Development]]'
  type: implements
- target: '[[concepts/evals-in-ci|Evals in CI]]'
  type: enables
summary: Eval SDK-First Workflow
---

# Eval SDK-First Workflow

The SDK-first workflow defines prompts, datasets, and scores in version-controlled code (TypeScript or Python), then pushes them to the evaluation platform. This bridges local development with platform-based execution and CI integration. ^[extracted]

## The Workflow

1. **Define in code** — Write task definitions, dataset rows, and scoring functions in `.ts` or `.py` files
2. **Push to platform** — Use `braintrust push` to sync resources to the Braintrust platform
3. **Run evals** — Execute via `braintrust eval` from the command line, CI pipeline, or the playground UI
4. **View results** — Results from all three paths aggregate into the same experiment views

## Key Benefits

- **Version control** — Prompts, datasets, and scores live alongside application code
- **CI integration** — Run the same evals on every PR, catching regressions before merge
- **Reusability** — The same scoring functions work for both offline evals and online scoring
- **Collaboration** — Non-technical team members can use the playground UI while engineers work in code
- **Single source of truth** — Results from UI and SDK merge into the same experiment views

## Platform vs SDK

| Dimension | Playground UI | SDK |
|---|---|---|
| **Audience** | PMs, SMEs, non-technical | Engineers |
| **Definition** | Visual interface | Code files |
| **Version control** | Platform history | Git |
| **CI integration** | No | Yes |
| **Results** | Aggregate with SDK | Aggregate with UI |

The SDK-first approach connects local development to the platform, enabling the full evaluation flywheel from code to production and back. ^[inferred]

## Related

- [[concepts/eval-playground-experiment-workflow|Eval Playground vs Experiments Workflow]] — The UI mode that complements the SDK
- [[concepts/evals-in-ci|Evals in CI]] — CI integration enabled by the SDK workflow
- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — The SDK is the development half of the flywheel
