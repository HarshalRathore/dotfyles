---
title: Eval Flywheel Effect
category: concepts
tags:
- evals
- feedback-loop
- continuous-improvement
- production-ai
- braintrust
sources:
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/online-evals|Online Evals]]'
  type: uses
- target: '[[concepts/ai-iteration-loop|AI Iteration Loop]]'
  type: implements
- target: '[[concepts/eval-baseline-first|Eval Baseline First]]'
  type: builds_on
summary: Eval Flywheel Effect
---

# Eval Flywheel Effect

The eval flywheel effect is a continuous improvement loop where production observations feed back into offline evaluation datasets, creating compounding gains in application quality and development speed. ^[extracted]

## The Flywheel Cycle

```
Production logs → Identify low-scoring spans → Add to offline dataset → Improve task → Re-deploy → Monitor scores → Repeat
```

The flywheel connects two eval modes:

1. **Offline evals** — Pre-production iteration where tasks, datasets, and scores are defined and tested
2. **Online evals** — Real-time tracing of production application behavior, logging model inputs/outputs, tool calls, latency, cost, and duration

When online evals surface poorly-scored production traces, human reviewers can add them to the offline dataset with a single click. These new edge cases then participate in the next round of offline eval runs, ensuring the system improves against real-world failure modes. ^[extracted]

## Business Impact

The flywheel effect produces measurable outcomes:

- **Cut development time** — Faster iteration through automated feedback reduces the time between identifying a problem and fixing it
- **Enhance application quality** — Each cycle incorporates more real-world edge cases, making the system more robust
- **Enable faster model switching** — As [[entities/notion|Notion]] demonstrated, a strong eval flywheel allows testing new models within a day of release

## The Three Pillars That Enable the Flywheel

Doug Guthrie described the flywheel as emerging from three interconnected components: ^[extracted]

1. **Prompt engineering** — The playground acts as an IDE for LLM outputs, enabling rapid prototyping and A/B comparison of prompts and models
2. **Evals** — Structured tests that measure whether changes improve or degrade quality
3. **Observability** — Production logging that captures the full trace of application behavior, enabling human review and user feedback

## Related

- [[concepts/ai-iteration-loop|AI Iteration Loop]] — The broader operational cycle the flywheel is part of
- [[concepts/online-evals|Online Evals]] — The production-side of the flywheel
- [[concepts/eval-baseline-first|Eval Baseline First]] — The starting point before the flywheel accelerates
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — The observability pillar enabling production data capture
