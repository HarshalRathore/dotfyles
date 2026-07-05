---
title: "AIEF2025 - Fuzzing in the GenAI Era — Leonard Tang, Haize Labs"
category: references
tags: [reference, talk, aief2025, fuzz-testing, ai-reliability, qa, evaluation, property-based-testing, brittleness]
summary: "Leonard Tang (Haize Labs) at AIEF2025 on applying property-based/fuzz testing to GenAI — brittleness, Lipschitz discontinuity, LLM-as-judge problems, and scaling judge time compute."
sources:
  - "[[sources/watchv=omgpvw8tbhc]]"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/fuzz-testing-ai]]"
    type: source_of
  - target: "[[concepts/brittleness-lipschitz-discontinuity]]"
    type: source_of
  - target: "[[concepts/llm-as-judge-problems]]"
    type: source_of
  - target: "[[concepts/scaling-judge-time-compute]]"
    type: source_of
---

# AIEF2025 - Fuzzing in the GenAI Era — Leonard Tang, Haize Labs

**Speaker**: Leonard Tang, Founder of Haize Labs
**Event**: AI Engineer World's Fair 2025
**Video**: https://www.youtube.com/watch?v=OMGPvW8TBHc

## Summary

Leonard Tang presents Haize Labs' approach to AI reliability through property-based testing and fuzz testing (which he calls "hazing"). He argues that the core problem in building with GenAI is not non-determinism but **brittleness** — the property that tiny input perturbations cause wildly different outputs (Lipschitz discontinuity). Standard static eval datasets cannot capture this because they lack coverage and cannot translate subjective quality criteria into quantitative metrics.

## Key Topics

- **The last mile problem**: Demo-ready systems vs. production-grade reliability
- **Brittleness vs non-determinism**: The real challenge in GenAI
- **Fuzz testing loop**: Generate stimuli → Observe responses → Score outputs → Guide search
- **LLM-as-judge problems**: Hallucination, miscalibration, bias, instability
- **Scaling judge time compute**: Investing more compute at the evaluation stage

## Pages Created from This Talk

- [[concepts/fuzz-testing-ai|Fuzz Testing in AI]]
- [[concepts/brittleness-lipschitz-discontinuity|Brittleness and Lipschitz Discontinuity]]
- [[concepts/llm-as-judge-problems|LLM-as-Judge Problems]]
- [[concepts/scaling-judge-time-compute|Scaling Judge Time Compute]]
- [[entities/haize-labs|Haize Labs]]
- [[entities/leonard-tang|Leonard Tang]]
