---
title: "Promptification"
category: concepts
tags:
  - promptification
  - llm
  - recommendation-systems
  - prompt-engineering
  - data-formatting
aliases:
  - promptification
  - prompt-based modeling
sources:
  - "[[sources/watchv=u0s6cfzay5c]]"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/360brew]]"
    type: used_by
  - target: "[[concepts/instruction-tuning]]"
    type: related_to
---
# Promptification

Promptification is the process of converting structured data about users, items, and interactions into natural language prompts that can be fed to a large language model. It is the bridge between traditional recommendation system data and LLM-based personalization. ^[extracted]

## How It Works

In the context of [[concepts/360brew|360Brew]], promptification involves:

1. **Collecting user data** — member profile information, interaction history, items shown
2. **Formatting as a prompt** — structuring the data with:
   - An instruction describing the recommendation task
   - Member profile data
   - Past interaction history
   - A question about the relevance of a new item to the user
3. **Sending to the LLM** — the model processes the prompt and produces a relevance judgment

This approach formalizes recommendation as an LLM task, enabling the model to generalize across different instructions and recommendation surfaces. ^[extracted]

## Why It Matters

Promptification enables a single model to handle multiple recommendation tasks by varying the instruction in the prompt, rather than training separate models for each task. This is a core enabler of [[concepts/unified-recommendation-models|Unified Recommendation Models]] when using LLMs as the underlying architecture. ^[inferred]

## Related

- [[concepts/360brew|360Brew]] — LinkedIn's system that uses promptification as its core data pipeline
- [[concepts/instruction-tuning|Instruction Tuning]] — teaching models to follow varied instructions
- [[concepts/unified-recommendation-models|Unified Recommendation Models]] — promptification enables unified models via instruction variation
