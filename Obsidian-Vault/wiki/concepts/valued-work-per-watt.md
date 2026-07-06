---
title: Valued Work Per Watt
category: concepts
tags: [efficiency, compute, auto-research, agent-economics, optimization]
aliases: [valued work per watt, value per watt, watts per value]
relationships:
  - target: '[[concepts/auto-research-loop]]'
    type: related_to
  - target: '[[concepts/agent-recipes]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: The principle that everything beyond customer support, legal, and research comes down to measuring value per unit of compute — the recipe for the future of AI.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Valued Work Per Watt

**Valued work per watt** is the principle that the future of AI belongs to those who can measure and maximize **value per unit of compute**. It is described as "the recipe for everything going forward." ^[extracted]

Presented at the AI Engineer World's Fair 2026. ^[extracted]

## The Recipe

The progression from Cursor and Cognition demonstrates this pattern: ^[extracted]

1. **Build the best product** — create something valuable
2. **Build the best evals for the product** — measure what makes it valuable
3. **Build the best models based on the previous two artifacts** — optimize using the product and evals as training data

Code was the first domain where this was successful. Everything beyond customer support, legal, research, and more will follow the same pattern. ^[extracted]

## Two Questions

Valued work per watt requires answering two questions: ^[extracted]

1. **How do I measure the value?** — define what counts as valuable work
2. **How do I know I'm improving?** — track progress against the measure

## Connection to Auto-Research

In auto-research, valued work per watt is the ultimate score to optimize for. Aden demonstrated this by achieving a 6× higher leaderboard hit rate than the community average while using only 4% of the competition's compute. ^[extracted]

## Connection to Agent Recipes

**Agent recipes** encode the "taste" that determines what counts as valuable work. Recipes are the mechanism for encoding and sharing valued work per watt across teams and models. ^[inferred]

## Related

- [[concepts/auto-research-loop|Auto-Research Loop]] — the process that optimizes for valued work per watt
- [[concepts/agent-recipes|Agent Recipes]] — the mechanism for encoding taste
- [[concepts/nano-chat|Nano Chat]] — Aden's demonstration of valued work per watt
- [[concepts/nano-gpt-speed-run|Nano GPT Speed Run]] — CUDA kernel optimization via valued work per watt

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
