---
title: Multi-Model Voting
tags:
- agent
- ai
- accuracy
- ensemble
- llm
sources:
- 'https://www.youtube.com/watch?v=12v5s1n1eoy'
summary: Technique where multiple LLMs from different vendors vote on answers, with majority consensus used for higher-confidence results.
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
created: 2026-07-03
updated: 2026-07-03
category: concepts
tier: supporting
---

# Multi-Model Voting

Multi-model voting is a technique for improving AI output accuracy by querying multiple large language models from different vendors on the same task and using majority agreement as the final answer. It is one component of a broader [[concepts/agentic-architecture|agentic architecture]] for high-stakes enterprise AI applications.

## How It Works

When an AI task has a clear answer (form fields, classification, extraction), multiple models are asked independently. The responses are compared:
- **Majority agreement** — if two out of three models give the same answer, that answer is used
- **Disagreement** — high disagreement signals a genuinely hard question, triggering deeper analysis or human review

[[entities/box|Box]] uses this pattern with models from Gemini, Llama, OpenAI, and [[entities/anthropic|Anthropic]], running them as parallel nodes in an [[concepts/agentic-architecture|agentic extraction pipeline]].

## When to Use

- **High-uncertainty fields** — when LLM-as-a-judge or confidence scoring indicates low certainty
- **Enterprise accuracy requirements** — where a single wrong extraction has business impact
- **Cross-model independence** — models from different vendors have different training data and architectures, so their errors are less correlated

## Why Voting Works

As [[entities/laurie-voss|Laurie Voss]] noted at AI Engineer World's Fair 2025, voting works because "LLMs hallucinate, but they hallucinate in different ways. So they seldom hallucinate to the same answer." ^[extracted] This is the key insight behind the **voting** flavor of the [[concepts/agent-design-patterns|parallelization pattern]]: even identical models produce different errors on non-deterministic execution, and models from different vendors have uncorrelated training data and architectures, making coincident hallucination unlikely.

[[entities/llamaindex|LlamaIndex]] implements this pattern by emitting multiple events simultaneously and collecting results at the aggregation point, enabling concurrent model calls.


## Trade-offs

- **Latency** — running 3+ models in parallel multiplies API call time (though calls can be parallelized)
- **Cost** — multiple model inferences per extraction field
- **Diminishing returns** — voting helps most on uncertain answers; models already agree most of the time

## Relationship to LLM-as-a-Judge

Multi-model voting and [[concepts/agent-loop|LLM-as-a-judge]] are complementary: voting determines the answer when models disagree, while LLM-as-a-judge evaluates the quality of an answer and provides feedback for improvement. Box uses both in their extraction pipeline — voting for the extraction itself, and LLM-as-a-judge for post-extraction quality evaluation with retry capability. ^[inferred]

## Sources

- [[references/agent-design-patterns-production-laurie-voss-llamaindex]] — Talk at AI Engineer World's Fair 2025

- [[references/box-agentic-platform-ben-kus|Building an Agentic Platform — Ben Kus, CTO Box]] — Conference talk
