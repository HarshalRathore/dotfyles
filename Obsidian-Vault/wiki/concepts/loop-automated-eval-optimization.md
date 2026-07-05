---
title: "Loop — Automated Eval Optimization"
category: concepts
tags:
  - loop
  - automation
  - optimization
  - evals
  - braintrust
  - aief2025
  - cloud-4
sources:
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
summary: "Braintrust's Loop feature: an automated agent that optimizes prompts, datasets, and scorers together. Available via feature flag, powered by Cloud 4, with side-by-side UI and auto-optimize mode.
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
  - target: "[[concepts/system-level-optimization|System-Level Optimization]]"
    type: implements
  - target: "[[concepts/evals-play-offense|Evals Play Offense]]"
    type: enables
  - target: "[[concepts/manual-vs-automated-evals|Manual vs Automated Agent Evaluation]]"
    type: advances
  - target: "[[concepts/braintrust|Braintrust]]"
    type: part_of
---

# Loop — Automated Eval Optimization

Loop is a new product feature from [[entities/braintrust|Braintrust]] that automatically optimizes evals — prompts, datasets, and scorers — directly within the Braintrust platform. ^[extracted]

## How It Works

Loop works in Braintrust's playground: you provide a prompt, a dataset, and some scores, and Loop can create improved versions of all three. ^[extracted]

Key capabilities: ^[extracted]

- **Multi-ingredient optimization**: Iterates on prompts, datasets, and scorers together — not just prompts
- **Experiment-aware**: Has access to previous experiment results to understand whether each change is an improvement
- **Side-by-side UI**: Every suggestion (data edit, scoring idea, prompt edit) is shown alongside the original, preserving human inspection
- **Auto-optimize toggle**: An "adventurous" mode that runs optimization autonomously without human-in-the-loop review
- **Model selection**: Defaults to Cloud 4 but allows any model — OpenAI, Gemini, or custom LLMs

## The Cloud 4 Breakthrough

Loop is "actually only possible because of evals" — Braintrust has run quarterly evaluations on frontier models to measure how well they improve prompts, datasets, and scorers. Until very recently, these models "weren't very good" at these tasks. ^[extracted]

Cloud 4 is identified as "a real breakthrough moment" in model capability for eval optimization, performing nearly six times better than its predecessor at improving prompts, datasets, and scorers. ^[extracted]

## Availability

Loop is available to existing Braintrust users via a "Loop" feature flag in the feature flag section of Braintrust. ^[extracted]

## Related

- [[concepts/system-level-optimization|System-Level Optimization]] — The principle Loop implements
- [[concepts/evals-play-offense|Evals Play Offense]] — The strategic practice Loop enables
- [[concepts/manual-vs-automated-evals|Manual vs Automated Agent Evaluation]] — The progression Loop closes
- [[concepts/braintrust|Braintrust]] — The platform
- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — AIEF2025 Talk]] — Ankur Goyal's talk introducing Loop
