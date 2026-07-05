---
title: "PALM Model"
category: references
tags: [palm, google, llm, chain-of-thought, scaling, emergent-behavior, 540b, aief2025]
aliases: [PALM, Pathways Language Model, PaLM]
sources:
  - "[[sources/watchv=qludzkvfp6a]]"
summary: "Google's 540-billion-parameter language model that demonstrated emergent chain-of-thought reasoning capabilities. Led by Aakanksha Chowdhery, who was a lead researcher on PALM."
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/aakanksha-chowdhery|Aakanksha Chowdhery]]"
    type: created_by
  - target: "[[concepts/chain-of-thought|Chain-of-Thought]]"
    type: demonstrated
  - target: "[[concepts/compute-scaling-laws|Compute Scaling Laws]]"
    type: validates
---

# PALM Model

**PALM** (Pathways Language Model) was Google's 540-billion-parameter language model, one of the largest models ever built. It was led by [[entities/aakanksha-chowdhery|Aakanksha Chowdhery]], who was a lead researcher on PALM during her 6+ years at Google.

## Key Finding: Emergent Chain-of-Thought

PALM demonstrated that **chain-of-thought reasoning** — asking models to output their reasoning chains before answering — is a capability that emerges at large scale. ^[extracted]

On middle school math word problems (e.g., tennis ball problems), PALM's initial output looked wrong when not prompted for reasoning. But when asked to show its reasoning chains, the model's answers became correct. ^[extracted]

## Results

The solve rate on middle school math word problems increased substantially with the number of parameters in PALM, and this increase was mainly driven by chain-of-thought prompting. ^[extracted]

This was shown on a graph where:
- X-axis: increasing number of parameters (PALM scaled to 540 billion)
- Y-axis: solve rate on middle school math word problems
- The curve showed dramatic improvement when models were prompted for chain-of-thought ^[extracted]

## Generalization

The chain-of-thought capability was not limited to math. It generalized across domains:
- Question answering in other languages
- Puzzle problems
- Multi-task natural language understanding ^[extracted]

## Significance

PALM was a state-of-the-art model about three years ago (at the time of the AIEF2025 talk). It demonstrated that:
1. Scaling laws hold at extreme parameter counts
2. Emergent capabilities appear at scale that don't exist in smaller models
3. Chain-of-thought reasoning emerged naturally in large models ^[extracted]

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
