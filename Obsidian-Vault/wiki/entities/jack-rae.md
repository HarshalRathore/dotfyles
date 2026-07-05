---
title: "Jack Rae"
tags:
  - entity
  - person
  - google
  - deepmind
  - reasoning
aliases:
  - Jack Rae (Google DeepMind)
relationships:
  - target: "[[entities/google-deepmind]]"
    type: related_to
  - target: "[[concepts/test-time-compute-scaling]]"
    type: related_to
sources:
  - "[[sources/watchv=8eqo4j2bwkw]]"
summary: "Researcher at Google DeepMind and technical lead of thinking within Gemini, responsible for advancing reasoning and test-time compute scaling in Gemini models."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Jack Rae

Jack Rae is a researcher at [[entities/google-deepmind|Google DeepMind]] and the technical lead of thinking within [[entities/gemini|Gemini]]. His work focuses on advancing reasoning capabilities in large language models through test-time compute scaling — inserting thinking stages where models iteratively process additional tokens before producing final answers. ^[extracted]

## Key Ideas

- **Intelligence bottlenecks framework** — progress in AI is marked by identifying and solving key bottlenecks, with the current frontier being fixed test-time compute ^[extracted]
- **Test-time compute scaling** — dynamically scaling inference compute to match problem difficulty, trained via reinforcement learning ^[extracted]
- **Thinking budgets** — continuous quality/cost control for developers via adjustable thinking compute ^[extracted]
- **Deep Think** — very high budget thinking mode with parallel chains of thought for hard problems ^[extracted]

## Talk at AI Engineer World's Fair 2025

Presented "Thinking Deeper in Gemini" at the AI Engineer World's Fair 2025, covering the research motivation for thinking, mechanical details of how thinking works in Gemini, the implications for developers, and future directions including Deep Think. ^[extracted]

## Related

- [[concepts/test-time-compute-scaling|Test-Time Compute Scaling]] — Core concept of his work
- [[concepts/intelligence-bottlenecks|Intelligence Bottlenecks]] — Framework he articulated for AI progress
- [[concepts/thinking-budgets|Thinking Budets]] — Developer-facing thinking budgets
- [[references/thinking-deeper-in-gemini-jack-rae-deepmind|Thinking Deeper in Gemini]] — His talk

## Sources

- [[references/thinking-deeper-in-gemini-jack-rae-deepmind|Thinking Deeper in Gemini — Jack Rae, Google DeepMind]] — AI Engineer World's Fair 2025 talk
