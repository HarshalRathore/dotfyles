---
title: "Emergent Behavior in AI"
category: concepts
tags:
  - ai-agents
  - emergent-behavior
  - product-management
  - non-determinism
  - aief2025
aliases: [emergent behavior, emergent functionality, behavior is emergent]
sources:
  - "[[sources/watchv=pthmdt92qng]]"
  - "AIEF2025 - The rise of the agentic economy on the shoulders of MCP — Jan Curn, Apify - https://www.youtube.com/watch?v=blW-lSd5CYQ"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.72
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/affordance-thinking]]"
    type: requires
  - target: "[[concepts/discover-functionality]]"
    type: enables
  - target: "[[concepts/non-deterministic-software]]"
    type: relates_to
  - target: "[[concepts/agent-evaluations]]"
    type: measured_by
  - target: "[[concepts/emergent-intelligence]]"
    type: relates_to
---

# Emergent Behavior in AI

**Emergent behavior** in AI refers to the phenomenon where AI systems — particularly LLM-based agents — exhibit capabilities and behaviors that their builders did not explicitly program or predict. This is a fundamental characteristic of AI-native products that distinguishes them from traditional software. ^[extracted]

## The Insight

Ben Stein's key observation: "Not only do we not know if things work — sometimes they do, and they work in ways we didn't expect." ^[extracted] This goes beyond the usual LLM non-determinism (same prompt, different output). It's about the system doing things the builder never imagined.

## Why It Happens

LLMs are trained on the full breadth of human knowledge and language. When combined with agentic workflows (planning, tool use, multi-step reasoning), they can compose capabilities in novel ways that no spec anticipated. ^[inferred]

## Product Management Implications

The product person's job shifts from **specifying behavior** to **discovering functionality**: providing the right building blocks (affordances) and then discovering what users compose with them. ^[extracted]

This means:
- **Build the Lego bricks, not the castle** — Provide affordances, not feature specs.
- **Observe emergent use cases** — Users will find uses you didn't anticipate.
- **Evals become discovery tools** — Not just quality gates, but instruments for learning what the system can do. ^[inferred]

## Communication Challenges

How do you communicate emergent behavior to a development team? Figma doesn't have affordances for it. PRDs don't have affordances for describing open-ended agent behavior. This is an unsolved problem in product management practice. ^[extracted]

## Emergent Intelligence Analogy

Jan Čern of Apify extends the concept of emergent behavior to a broader principle of **emergent intelligence**: intelligence arises not from individual components but from interactions between autonomous units. He illustrates this through three analogies:

1. **Biological systems:** Individual neurons establish connections and learn to communicate; the collective behavior is what we call intelligence. ^[extracted]
2. **Markets:** Individual participants pursue their own interests; their mutual interaction produces collective intelligence greater than any individual. ^[extracted]
3. **Companies:** Employees interact and collaborate; the collective output exceeds individual intelligence. ^[extracted]

Čern argues that general intelligence in computing will follow the same pattern — emerging from the interaction of multiple agents pursuing their own goals, not from ever-larger single models. ^[extracted]

## Relationship to Other Concepts

Emergent behavior is what makes [[concepts/affordance-thinking|affordance thinking]] necessary. It's the reason [[concepts/discover-functionality|discovering functionality]] replaces specification. It's measured and guided through [[concepts/agent-evaluations|agent evaluations]]. ^[inferred]

## Sources

- [[references/aief2025-shipping-products-when-you-dont-know-what-they-can-do|AIEF2025 - Shipping Products When You Don't Know What They Can Do]]
- AIEF2025 - The rise of the agentic economy on the shoulders of MCP — Jan Curn, Apify - https://www.youtube.com/watch?v=blW-lSd5CYQ
