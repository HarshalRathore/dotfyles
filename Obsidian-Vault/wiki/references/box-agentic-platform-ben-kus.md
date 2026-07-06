---
title: Building an Agentic Platform — Ben Kus, CTO Box
tags:
- reference
- talk
- agent
- enterprise
- ai
sources:
- 'https://www.youtube.com/watch?v=12v5s1n1eoy'
summary: Conference talk by Ben Kus, CTO of Box, on Box's journey building an agentic platform for enterprise content AI.
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.75
lifecycle: draft
created: 2026-07-03
updated: 2026-07-03
category: references
tier: supporting
---

# Building an Agentic Platform — Ben Kus, CTO Box

> [!tldr] Box shifted from simple LLM calls to a full agentic architecture using directed graphs, multi-model voting, and LLM-as-a-judge to solve complex enterprise data extraction at scale.

## Summary

[[entities/ben-kus|Ben Kus]], CTO of [[entities/box|Box]], describes the company's journey building an [[concepts/agentic-architecture|agentic platform]] for enterprise content. Starting with simple LLM-powered data extraction in 2023, Box hit a complexity wall with large documents, cross-field dependencies, and enterprise accuracy requirements. Their solution: an agentic architecture using directed graphs, field grouping, multi-model voting, and LLM-as-a-judge with retry loops.

## Key Takeaways

1. The agentic abstraction layer is architecturally clean and separate from distributed system scaling concerns
2. Agentic systems are easy to evolve incrementally — new requirements can often be addressed by modifying individual nodes in the directed graph
3. Teams should adopt an "agentic-first" mindset early when AI models could plausibly solve the problem
4. Box is anti-fine-tuning, preferring prompt engineering and agentic approaches across multiple model vendors (Gemini, Llama, OpenAI, Anthropic)
5. Box publishes MCP servers and provides an agent API as part of their platform strategy

## Related

- [[concepts/unstructured-data-extraction|Unstructured Data Extraction]]
- [[concepts/multi-model-voting|Multi-Model Voting]]

## Sources

- <https://www.youtube.com/watch?v=12v5S1n1eOY>
