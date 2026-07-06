---
title: Decisions Ledger
category: concepts
tags: [agent-memory, recall, RAG, ranked-recall, context-rot, memory-management]
aliases: [decisions ledger, ranked recall, decisions-ledger recall, ranked recall policy]
relationships:
  - target: '[[concepts/memory-harness]]'
    type: implements
  - target: '[[concepts/context-rot]]'
    type: solves
  - target: '[[concepts/project-paradox]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A ranked recall strategy that recalls decisions rather than raw context — the best-performing approach in memory harness evaluations, outperforming no-memory, vector RAG, and oracle baselines.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Decisions Ledger

The **decisions ledger** is a **ranked recall** strategy for agent memory that stores and retrieves decisions rather than raw context. It is the best-performing policy in the memory harness recall ladder, outperforming both no-memory and vector RAG baselines. ^[extracted]

## The Recall Policy Ladder

The effectiveness of memory retrieval strategies follows a ladder: ^[extracted]

| Level | Strategy | Performance |
|-------|----------|-------------|
| 1 | No memory | Baseline |
| 2 | Vector RAG | Better |
| 3 | **Decisions ledger (ranked recall)** | **Best** |
| 4 | Oracle (reference) | Theoretical maximum |

## Why It Works

Unlike vector RAG which retrieves semantically similar chunks of raw context, the **decisions ledger** records and ranks the actual decisions the agent made: ^[inferred]

- **Compresses** context into decision points, reducing noise
- **Prioritizes** by importance and recency, not just semantic similarity
- **Preserves provenance** — the reasoning behind each decision is kept alongside the decision itself
- **Cross-model generalization** — works consistently across different models (Qwen 27B 4-bit, DeepSeek v4 Flash) ^[extracted]

## Empirical Results

The ranked recall (decisions ledger) was tested on the **Spyder V2** benchmark across 68 questions with multiple cells and seeds: ^[extracted]

- Consistently outperformed no-memory and vector RAG baselines
- Cost efficiency: better recall also costs less — bad memory policies waste tokens and send agents in the wrong direction
- Worked across different model architectures, demonstrating generalizability ^[extracted]

## Related

- [[concepts/memory-harness|Memory Harness]] — the broader write-manage-read loop
- [[concepts/context-rot|Context Rot]] — the fundamental problem the decisions ledger solves
- [[concepts/retrieval-augmented-generation|RAG]] — the retrieval paradigm that decisions ledger extends
- [[concepts/project-paradox|Project Paradox]] — multi-agent system using importance-scored memory
- [[concepts/spyder-v2-benchmark|Spyder V2]] — the benchmark where decisions ledger was evaluated

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
