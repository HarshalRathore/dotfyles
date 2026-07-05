---
title: "Thinking Models for Bug Detection"
category: concepts
tags: [thinking-models, reasoning-models, bug-detection, agent-evaluation, aief2025]
summary: Empirical finding that thinking/reasoning models significantly outperform non-thinking models at bug detection in codebases, though they still exhibit high run-to-run variability.
sources:
  - "AIEF2025 - How to Improve your Vibe Coding — Ian Butler - https://www.youtube.com/watch?v=g03m-WFEu1U"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/reasoning-models]]"
    type: extends
  - target: "[[concepts/agent-reliability-challenge]]"
    type: relates_to
  - target: "[[concepts/agent-run-variability]]"
    type: relates_to
---

# Thinking Models for Bug Detection

Thinking models (reasoning models with extended chain-of-thought) significantly outperform non-thinking models at finding bugs in codebases. ^[extracted]

## Evidence

In Bismuth's SM100 benchmark, thinking models consistently found deeper bugs than non-thinking models. Examining their thought traces reveals agents expanding across multiple considerations before diving deeper into specific code paths. ^[extracted]

## Limitations

Even thinking models have significant limitations:

- **High run-to-run variability**: The top line number of bugs found remains the same across runs, but the specific bugs found change. Agents are not holistically analyzing files the way a human would. ^[extracted]
- **No single holistic view**: Consumers shouldn't have to run agents 100 times to get a complete bug breakdown — but that's the current reality. ^[extracted]
- **Context compaction still degrades performance**: When context fills up, thinking models still summarize or compact files, reducing bug detection ability. ^[extracted]

## Practical Recommendation

When using agents like Claude Code or Cursor for bug detection, prefer thinking models. The improvement is significant enough to be a default choice rather than an optional optimization. ^[extracted]

## Relationship to Other Concepts

Thinking models for bug detection is a specific application of the broader [[concepts/reasoning-models|reasoning models]] capability. It also relates to [[concepts/agent-run-variability|agent run-to-run variability]] — the finding that even the best models produce inconsistent results across runs. ^[inferred]
