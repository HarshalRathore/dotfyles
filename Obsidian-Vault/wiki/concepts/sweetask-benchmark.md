---
title: SweeTask Benchmark
category: concepts
tags:
- benchmark
- eval
- windsurf
- sweeone
- software-engineering
- aief2025
summary: Windsurf's conversational benchmark for evaluating AI models on mid-workflow assistance — testing how well a model helps when dropped into an existing conversation or partially completed task, meas...
sources:
- 'https://www.youtube.com/watch?v=jvunpl5qo8q'
provenance:
  extracted: 0.9
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# SweeTask Benchmark

**SweeTask** is one of two offline benchmarks used to evaluate [[concepts/software-engineering-model|SweeOne]], Windsurf's software engineering model. Introduced by [[entities/kevin-hou|Kevin Hou]] at AIEF2025, SweeTask measures how well a model assists when dropped into an existing conversation or partially completed task — testing mid-workflow integration aligned with the [[concepts/shared-timeline|shared timeline]] paradigm. ^[extracted]

## What It Measures

SweeTask evaluates a model's ability to:

1. **Integrate into ongoing work** — Not start from scratch, but pick up mid-workflow
2. **Understand partial context** — Work with incomplete or messy state
3. **Be helpful, efficient, and correct** — Produces a blended score across these three dimensions

This is fundamentally different from benchmarks that test code generation from a clean prompt. SweeTask tests the model's ability to participate in an ongoing workflow — the real use case for the shared timeline model. ^[extracted]

## Contrast with End-to-End Task Benchmark

SweeOne is evaluated on two benchmarks:

| Benchmark | Scenario | Tests |
|-----------|----------|-------|
| **End-to-end task** | Given intent + starting codebase → pass all unit tests | PRs from intent to completion |
| **SweeTask** | Dropped into existing conversation / partial task | Mid-workflow assistance |

The end-to-end benchmark tests the full lifecycle; SweeTask tests the messy middle — where real software engineering happens. ^[extracted]

## Relationship to SweeBench

SweeTask is Windsurf's own benchmark, distinct from the industry-standard [[concepts/ai-eval-beyond-sweebench|SweeBench]]. While SweeBench measures "tokens in, tokens out" code generation, SweeTask measures mid-workflow participation — a capability that SweeBench does not evaluate. ^[inferred]

## Related

- [[concepts/software-engineering-model|Software Engineering Model]] — SweeOne's evaluation framework
- [[concepts/shared-timeline|Shared Timeline]] — The paradigm SweeTask tests
- [[concepts/ai-eval-beyond-sweebench|AI Evals Beyond SweeBench]] — Why SweeBench is insufficient
- [[references/aief2025-windsurf-everywhere-kevin-hou]] — Full talk
