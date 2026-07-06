---
title: Online Evals
tags:
- concept
- evaluation
- production
- monitoring
- observability
- scoring
aliases:
- production evals
- online scoring
- live traffic evaluation
- online scoring rules
sources:
- 'https://www.youtube.com/watch?v=9in-cpnp7xg'
- 'https://www.youtube.com/watch?v=l8ooyedi_ls'
- AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA
summary: Production evaluation of AI systems where live user traffic is automatically scored using defined metrics, enabling regression alerts, real-time monitoring, and continuous dataset improvement. Comp...
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-05
category: concepts
---

# Online Evals

Online evals measure the quality of live production traffic — real user interactions are automatically scored and monitored, enabling real-time regression detection and feedback loop closure. ^[extracted]

## Offline vs Online Evals

| Dimension | Offline Evals | Online Evals |
|-----------|--------------|--------------|
| **When** | Development / pre-release | Production / live traffic |
| **Purpose** | Proactive issue identification | Reactive monitoring & diagnosis |
| **Data** | Curated test datasets | Real user interactions |
| **Speed** | Batched, scheduled | Configurable sampling rate |
| **Output** | Experiment scores, pass/fail | Continuous score timeline, alerts |

Offline evals answer "will this work?" Online evals answer "is it working?" ^[inferred]

## How Online Scoring Works

Online scoring evaluates production logs against defined score functions at configurable sampling rates: ^[extracted]

1. **Log production traffic** — Wrap the LLM client (OpenAI SDK, Vercel AI SDK, Otel) to automatically capture prompts, responses, metrics (tokens, latency, cost), and metadata
2. **Define online scoring rules** — Choose which scores to apply, what sampling rate (e.g., 25% or 100%), and which specific trace span to target (root span or a nested child span)
3. **Evaluate automatically** — Each sampled log is scored and the results appear in the trace alongside other metrics
4. **Set regression alerts** — Configure thresholds that notify teams when scores drop below a critical baseline

## Key Capabilities

- **Configurable sampling rate** — Start low, increase as trust in the metrics grows ^[extracted]
- **Span-targeted scoring** — Score the root trace or drill into a specific nested span for granular measurement ^[extracted]
- **A/B comparison of prompts** — Tag production traces by prompt version and compare scores across cohorts ^[extracted]

## Evals in CI

Online scoring complements [[concepts/evals-in-ci|evals in CI]] — the practice of running the same eval tasks across the full dataset when PRs are submitted, visualizing how changes affect the entire "court" of test cases. ^[extracted] Together, CI evals (offline) and online scoring (live traffic) form a complete evaluation feedback loop. ^[inferred]

## The Flywheel Effect

Online evals enable a continuous improvement loop: ^[inferred]

```
Production logs → Identify low-scoring spans → Add to offline dataset → Improve task → Re-deploy → Monitor scores
```

Poorly-scored production traces are surfaced and human reviewers can add them back into offline datasets, closing the gap between development test cases and real-world edge cases. ^[extracted]

## Online Scoring in Braintrust

In [[entities/braintrust|Braintrust]], online scoring rules are configured in the project settings UI: select scores, set sampling rate, choose target span. Scores appear in the trace view alongside metrics like token count and latency. [[concepts/ai-observability-production-logging|Custom views]] can be created to filter logs where specific scores fall below thresholds, enabling focused human review workflows. ^[extracted]

## Related

- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — the scoring framework that powers online evals
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — how production traces are captured
- [[concepts/eval-quality-matrix|Eval Quality Matrix]] — diagnostics for interpreting online scores
- [[concepts/evaluation-first-development|Evaluation-First Development]] — the offline counterpart that feeds into online evals
- [[concepts/evals-in-ci|Evals in CI]] — Offline evals that run on PRs and commits
- [[concepts/deterministic-eval-scoring|Deterministic Eval Scoring]] — Simple scores work better for both online and CI evals
- [[concepts/application-layer-evals|Application-Layer Evals]] — The broader paradigm online evals serve

## Sources

- [[references/aief2025-evals-workshop-braintrust|AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production]] — Braintrust workshop at AI Engineer World's Fair 2025
- "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
