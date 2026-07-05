---
title: "Brittleness and Lipschitz Discontinuity in AI"
category: concepts
tags: [brittleness, lipschitz-discontinuity, ai-reliability, genai, input-sensitivity, non-determinism]
summary: "GenAI systems exhibit extreme sensitivity to input perturbations — tiny changes in syntax, semantics, or appearance cause wildly different outputs. This is the core property making AI hard to build with, worse than non-determinism."
sources:
  - "[[sources/watchv=omgpvw8tbhc]]"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/fuzz-testing-ai]]"
    type: motivates
  - target: "[[concepts/last-mile-problem-ai]]"
    type: extends
  - target: "[[concepts/reliability-over-intelligence]]"
    type: related_to
  - target: "[[concepts/evals-are-not-unit-tests]]"
    type: related_to
---

# Brittleness and Lipschitz Discontinuity in AI

GenAI applications exhibit a property that Leonard Tang calls **brittleness**, or more technically, **Lipschitz discontinuity**: sending two ostensibly similar inputs to an AI application — with perhaps slight variance in syntax, semantics, or appearance — can produce wildly different outputs. ^[extracted]

## Brittleness vs Non-Determinism

Tang argues this is the *actual* core property that makes building with GenAI difficult, not the commonly cited non-determinism. ^[extracted]

- **Non-determinism is manageable**: Set temperature to zero, use caching, and LLM providers' quirks become largely irrelevant. Most AI apps constrain outputs to temperature zero and run through deterministic workflows.
- **Brittleness is the real problem**: Tiny input perturbations cause large output swings. Two inputs that look nearly identical to a human can produce completely different responses.

This distinction is important because it changes the approach to solving AI reliability. Non-determinism is solved by determinism controls (temperature=0, caching). Brittleness requires understanding the input space structure and finding the perturbations that trigger discontinuities. ^[inferred]

## Real-World Manifestations

Brittleness manifests in countless documented failures: ^[extracted]

- Air Canada customer support chatbots hallucinating
- Character AI directing teenagers to self-harm
- Pricing errors like a $1 pickup truck on Chevrolet's customer portal

These happen "more or less every single week." ^[extracted]

## Why Standard Evals Miss Brittleness

A static golden dataset cannot capture brittleness because: ^[extracted]

1. **Coverage gap**: The dataset only covers the specific inputs tested. Push "around the corner" to denser regions of input space and entirely different failure modes emerge.
2. **Measurement gap**: Even if you test nearby inputs, comparing outputs to ground truth is hard. You need a subject-matter expert's sensitivity translated into a quantitative metric — the reward modeling challenge that has resisted solution for 5-7+ years.

## The Mathematical Analogy

"Lipschitz discontinuity" borrows from analysis: a function is Lipschitz continuous if the output change is bounded by a constant times the input change. GenAI functions are *not* Lipschitz continuous — arbitrarily small input changes can produce arbitrarily large output changes. This is what makes them brittle. ^[inferred]

## Connection to Fuzz Testing

Brittleness is precisely what fuzz testing in AI is designed to discover. By generating perturbations across the input space and scoring outputs, fuzz testing systematically finds the input regions where discontinuities occur. ^[inferred]

## Sources

- AIEF2025 - Fuzzing in the GenAI Era — Leonard Tang, Haize Labs. https://www.youtube.com/watch?v=OMGPvW8TBHc
