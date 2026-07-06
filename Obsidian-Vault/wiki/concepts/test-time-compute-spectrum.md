---
title: Test-Time Compute Spectrum
category: concepts
tags: [retrieval, reranking, test-time-compute, CO-BERT, frozen-embedder]
aliases: [test time compute spectrum, reranking spectrum, retrieval spectrum]
relationships:
  - target: '[[concepts/test-time-compute-scaling]]'
    type: related_to
  - target: '[[concepts/re-ranking]]'
    type: extends
  - target: '[[concepts/memory-harness]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A spectrum of retrieval methods from simple cosine distance to CO-BERT latent interaction, with frozen embedder reranking programs achieving 83% win rate on held-out data.
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

# Test-Time Compute Spectrum

The **test-time compute spectrum** describes the range of retrieval and reranking methods from simplest to most distilled, with each step applying more compute at inference time. ^[extracted]

Presented by Han Xiao at the AI Engineer World's Fair 2026. ^[extracted]

## The Spectrum

| Method | Compute | Description |
|--------|---------|-------------|
| **Cosine distance** | Minimal | Single vector per document, single vector per query |
| **Reranking programs** | Moderate | Cheap math on top of existing vectors |
| **CO-BERT latent interaction** | Maximum | Every query token matched against every document token |

CO-BERT represents an extreme case of test-time compute — full token-to-token interaction between query and document. ^[extracted]

## Frozen Embedder Reranking

The key insight: a **frozen embedder** (a model whose weights are not changed) can improve at test time through reranking programs. ^[inferred]

The reranking programs:
- Test some query and document vectors you already have
- Add cheap math on top (nudge the query toward a document it already likes, pick directions in the space and rescore along those directions)
- Are very small structural changes but enough to pull the right document up

The best program **wins 83% on held-out data** and never loses on any single task. ^[extracted]

## Discovery Process

The programs were discovered through an automated search process:
1. The system picked six completely different programs
2. All were very cheap (1.5× more compute than the cosine baseline)
3. They transferred across models and languages
4. No new models were trained — just old recombination ^[extracted]

## Related

- [[concepts/test-time-compute-scaling|Test-Time Compute Scaling]] — the broader paradigm
- [[concepts/re-ranking|Re-Ranking]] — the retrieval improvement technique
- [[concepts/memory-harness|Memory Harness]] — where reranking is applied
- [[concepts/agent-memory-knowledge|Agent Memory & Knowledge]] — retrieval in agent systems
- [[entities/han-xiao|Han Xiao]] — presenter of the test-time compute spectrum

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
