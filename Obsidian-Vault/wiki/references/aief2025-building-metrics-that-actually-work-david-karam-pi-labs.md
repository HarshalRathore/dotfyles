---
title: "AIEF2025 - Building Metrics that actually work — David Karam, Pi Labs"
category: references
tags:
  - aief2025
  - workshop
  - evals
  - metrics
  - evaluation-methodology
aliases:
  - building-metrics-that-actually-work
sources:
  - "AIEF2025 - [Full Workshop] Building Metrics that actually work — David Karam, Pi Labs (fmr Google Search) - https://www.youtube.com/watch?v=jxrGodnopHo"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/david-karam|David Karam]]"
    type: authored_by
  - target: "[[entities/aief2025|AIEF2025]]"
    type: presented_at
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: relates_to
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: relates_to
---

# AIEF2025 - Building Metrics that actually work

**Speaker:** David Karam, Pi Labs (fmr Google Search)
**Format:** Full Workshop
**Source:** https://www.youtube.com/watch?v=jxrGodnopHo

## Summary

David Karam, who spent over a decade at Google building and evaluating search systems, co-presented a workshop on building evaluation metrics that actually work for AI systems. Drawing on Google's experience with stochastic systems, the core thesis is that evaluation methodology — not tooling — is the primary lever for building reliable AI.

## Key Points

### The Evals Labor Problem

Evals consume approximately 80% of feature development time in AI projects. Unlike traditional software testing — where some teams tested and some didn't, and the practice was optional — evals are now mandatory for every AI project. The industry lacks established best practices, meaning every team must build their eval infrastructure from scratch. ^[extracted]

### Two Core Components: Synthetic Data and Metrics

Karam distinguished two aspects of evaluation: ^[extracted]

1. **Synthetic data** — generating test data to evaluate the system
2. **Metrics** — checking whether the system's outputs meet quality standards

These are separate concerns: synthetic data is about what you test with, metrics are about how you judge the results.

### The Automated Evals Challenge

Fully automated evals (where humans don't sit and evaluate) are universally desired but difficult to achieve. The common pattern of leaning on AI to perform human tasks breaks down for evals — LLMs tend to be hard at evaluating their own outputs. ^[extracted] ^[inferred]

### Methodology Over Tooling

The biggest takeaway from Karam's talk is that the methodology of evaluation — learned over a decade at Google working on stochastic search systems — matters more than any specific tool or product. The techniques from Google search evaluation are being brought to Pi Labs, but the transferable insight is the process, not the platform. ^[extracted]

## Related

- [[entities/david-karam|David Karam]] — Speaker, Pi Labs, fmr Google Search
- [[entities/pi-labs|Pi Labs]] — Current employer
- [[concepts/eval-driven-development|Eval-Driven Development]] — Evals-first methodology
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Structured evaluation systems
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — Stochastic vs deterministic evaluation
