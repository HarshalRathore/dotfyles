---
title: "Ben Kus"
tags:
  - person
  - executive
  - cto
  - ai
  - enterprise
sources:
  - "[[sources/watchv=12v5s1n1eoy]]"
summary: "CTO of Box, leading the company's AI and agentic platform strategy for enterprise content."
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
base_confidence: 0.65
lifecycle: draft
created: 2026-07-03
updated: 2026-07-03
---

# Ben Kus

Ben Kus is CTO of [[entities/box|Box]], driving the company's AI and agentic platform strategy. He represents Box's technical leadership in building enterprise-scale AI capabilities for unstructured content management.

## AI Vision

Kus advocates for building [[concepts/agentic-architecture|agentic architecture]] early when confronting AI challenges. He describes Box's journey from simple LLM calls to a full agentic platform using directed graphs, multi-model voting, and LLM-as-a-judge for self-correction. ^[inferred]

Key positions:
- Prefers agentic approaches over fine-tuning — citing maintenance burden across multiple model vendors and rapid model improvement cycles
- Views the agentic abstraction layer as architecturally clean, allowing separation between the agentic framework and the scalable distributed systems that process content at volume
- Believes agentic architecture is easy to evolve — fixing output quality can be as simple as adding a node to the directed graph

## Key Lessons

Kus identifies three core lessons from Box's AI journey:
1. The agentic abstraction layer is architecturally clean and independent of distributed system scaling concerns
2. Agentic systems are easy to evolve incrementally — new requirements can often be addressed by modifying individual nodes in the directed graph rather than redesigning the whole system
3. Teams should adopt an "agentic-first" mindset early when it's plausible that AI models could help solve the problem

## Sources

- [[references/box-agentic-platform-ben-kus|Building an Agentic Platform — Ben Kus, CTO Box]] — Conference talk
