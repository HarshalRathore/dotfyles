---
title: "Recall@K"
category: concepts
tags:
  - retrieval
  - evaluation
  - metrics
  - recall
  - embedding-models
  - ranking
aliases:
  - recall-at-k
  - recall-k
summary: "The retrieval evaluation metric measuring whether the expected document appears in the top-k results. Used as the primary success rate metric in fast evals for comparing embedding models."
sources:
  - "AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc"
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/fast-evals|Fast Evals]]"
    type: uses
  - target: "[[concepts/golden-dataset|Golden Dataset]]"
    type: measures
  - target: "[[concepts/empirical-embedding-selection|Empirical Embedding Selection]]"
    type: supports
---

# Recall@K

**Recall@K** (recall at k) is a retrieval evaluation metric measuring whether the expected document appears in the top-k results returned by a retrieval system. It is the primary success rate metric used in [[concepts/fast-evals|fast evals]] for comparing embedding models and retrieval strategies. ^[extracted]

## Definition

Given a query and its expected (golden) document:

- **Recall@1**: Did the expected document appear as the #1 result?
- **Recall@5**: Did the expected document appear in the top 5 results?
- **Recall@10**: Did the expected document appear in the top 10 results?
- **Recall@K**: Did the expected document appear in the top K results?

The success rate across all queries in a golden dataset at a given K is the Recall@K score. ^[extracted]

## Use in Fast Evals

In the Chroma methodology, Recall@K is the north star metric for embedding model selection: ^[extracted]

1. Build a golden dataset of (query, expected document) pairs
2. Run each query through the retrieval system with the candidate embedding model
3. Check if the expected document appears in the top-K results
4. Calculate the fraction of queries where the expected document was retrieved

This gives a single, interpretable number: "Model A retrieves the expected document in X% of cases at K=10."

## Case Study: W&B Chatbot

The W&B chatbot evaluation compared four embedding models using Recall@10: ^[extracted]

- text-embedding-3-small: worst performance
- GINA embeddings v3: poor for this application (despite MTEB dominance)
- Voyage 3 large: **best performance**

The Recall@10 metric clearly distinguished between models, enabling a data-driven selection decision.

## Choosing K

The choice of K depends on the application: ^[extracted]

- **K=1**: Strict — only the top result counts
- **K=5-10**: Moderate — standard for most RAG applications
- **K=20**: Lenient — useful when you retrieve broadly and rerank downstream

## Limitations

- Recall@K measures retrieval only, not generation quality ^[inferred]
- Binary: a document at position K is counted the same as position 1 ^[inferred]
- Requires a golden dataset with known-good document mappings ^[inferred]
- Single-document golden datasets don't capture multi-document relevance ^[inferred]

## Related

- [[concepts/fast-evals|Fast Evals]] — Recall@K is the primary metric in fast evals
- [[concepts/golden-dataset|Golden Dataset]] — Recall@K operates on golden datasets
- [[concepts/empirical-embedding-selection|Empirical Embedding Selection]] — Recall@K drives model selection decisions
- [[concepts/retrieval-evaluation-isolation|Retrieval Evaluation Isolation]] — Recall@K is used for isolated retrieval evaluation
