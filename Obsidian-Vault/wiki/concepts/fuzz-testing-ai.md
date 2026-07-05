---
title: "Fuzz Testing in AI"
category: concepts
tags: [fuzz-testing, ai-reliability, property-based-testing, hazing, qa, evaluation, adversarial-testing]
summary: "Large-scale adversarial input generation to discover bugs and corner cases in AI applications before production — the AI adaptation of software fuzzing and property-based testing."
sources:
  - "[[sources/watchv=omgpvw8tbhc]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/ai-red-teaming]]"
    type: related_to
  - target: "[[concepts/last-mile-problem-ai]]"
    type: addresses
  - target: "[[concepts/brittleness-lipschitz-discontinuity]]"
    type: designed_for
  - target: "[[concepts/agent-evaluations]]"
    type: extends
  - target: "[[concepts/loop-automated-eval-optimization]]"
    type: related_to
---

# Fuzz Testing in AI

Fuzz testing in AI is the practice of generating large-scale adversarial or perturbated inputs to an AI application, observing the outputs, scoring them against criteria, and using the results to guide the next round of input generation — iteratively, until bugs and corner cases are discovered or the search budget is exhausted. ^[extracted]

## The Core Loop

The fuzz testing loop has four stages: ^[extracted]

1. **Generate stimuli** — produce inputs to send to the AI application (perturbations, variations, adversarial prompts)
2. **Obtain responses** — collect the AI application's outputs for each stimulus
3. **Judge and score** — evaluate each output against quality criteria (the "scoring" or "judging" problem)
4. **Guide search** — use scores to determine which input space regions deserve more exploration

This repeats until bugs are found or the search budget runs out. If the budget is exhausted without finding bugs, the system is considered ready for production. ^[extracted]

## Why Standard Evals Fail Here

Standard evals use a static, finite golden dataset of inputs and expected outputs. This approach has two critical limitations that fuzz testing addresses: ^[extracted]

- **Coverage**: A static dataset only tells you about the inputs you tested. Pushing "around the corner" to denser regions of input space can reveal entirely different failure modes.
- **Quality measurement**: Comparing AI outputs to ground-truth answers is fundamentally hard. You need a human subject-matter expert's sensitivity translated into a quantitative metric — a problem that has resisted solution for 5-7+ years through reward modeling research.

## Connection to Traditional Software Testing

Haize positions itself as a property-based testing and fuzz testing company (Leonard Tang calls it "hazing"). This connects to decades of software engineering practice: ^[extracted]

- **Property-based testing** generates random inputs and checks that system properties hold
- **Fuzz testing** throws malformed or unexpected inputs at a system to find crashes
- **Hazing** (in the AI context) adapts these ideas to the high-dimensional, brittle input space of LLM applications

The key difference from traditional fuzzing is that AI inputs are natural language — high-dimensional, semantic, and subject to Lipschitz discontinuity (tiny input perturbations causing wildly different outputs). ^[inferred]

## The Two Hard Technical Problems

Fuzz testing is easy to describe but difficult to execute, because both sides of the loop are technically hard: ^[extracted]

1. **Generating good stimuli** — creating inputs that are likely to trigger failures, not just random noise
2. **Scoring outputs** — translating subjective quality criteria into quantitative metrics that can guide the search

These are the same problems that underlie the broader AI evaluation challenge. ^[inferred]

## Relationship to Other Concepts

[[concepts/ai-red-teaming|AI Red Teaming]] is a related adversarial testing approach, but red teaming typically focuses on safety and harmful outputs, while fuzz testing in AI is broader — targeting any quality or reliability failure. Both share the core idea of adversarial input generation. ^[inferred]

[[concepts/loop-automated-eval-optimization|Loop]] implements a similar iterative feedback loop for eval optimization, using the same stimuli→response→score→search pattern but applied to evaluation datasets rather than production systems. ^[inferred]

## Sources

- AIEF2025 - Fuzzing in the GenAI Era — Leonard Tang, Haize Labs. https://www.youtube.com/watch?v=OMGPvW8TBHc
