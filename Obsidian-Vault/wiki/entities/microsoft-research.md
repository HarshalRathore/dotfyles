---
title: Microsoft Research
category: entities
tags:
- entity
- organization
- microsoft
- research
aliases:
- MSR
- MS Research
sources:
- "https://nitter.tiekoetter.com/i/article/2083971749079581120"
- "https://x.com/i/status/2084018136437985417"
summary: "Microsoft Research — the lab behind GraphRAG and LazyGraphRAG (Jonathan Larson's team) and the PlugMem and Memento agent-memory systems."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.57
lifecycle: draft
lifecycle_changed: "2026-08-03"
tier: supporting
created: "2026-08-03T00:00:00Z"
updated: "2026-08-03T00:00:00Z"
relationships:
  - target: "[[entities/jonathan-larson|Jonathan Larson]]"
    type: related_to
  - target: "[[concepts/lazy-graphrag|LazyGraphRAG]]"
    type: related_to
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
---

# Microsoft Research

Microsoft Research is Microsoft's research organization. In the agent-memory and retrieval space it is known for: ^[extracted]

- **GraphRAG / LazyGraphRAG** — the graph-retrieval architecture and its lazy evolution, led by [[entities/jonathan-larson|Jonathan Larson]]'s team. LazyGraphRAG beat vector RAG on 8k/120k/1M token contexts (92/90/91% on data-local questions) at a tenth of the cost of the million-token run. ^[extracted]
- **Benchmark QED** — an open-source evaluation benchmark (AutoQ query generation, AutoE LLM-as-judge evaluation, AutoD dataset summarization/sampling). ^[extracted]
- **PlugMem** — agent memory that stores facts and skills rather than raw logs. ^[extracted]
- **Memento** — memory managed inside the model: block reasoning, write dense notes, delete raw reasoning (2–3× lower peak memory, ~2× throughput). ^[extracted]

## Related Pages

- [[entities/jonathan-larson|Jonathan Larson]] — GraphRAG team lead
- [[concepts/lazy-graphrag|LazyGraphRAG]] — the graph retrieval system
- [[concepts/memory-engineering]] — the Microsoft lens (what is worth keeping)
- [[references/how-to-be-a-memory-engineer]] — article citing PlugMem and Memento
