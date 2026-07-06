---
title: Retrieval Evaluation Isolation
tags:
- ai
- rag
- evaluation
- retrieval
- methodology
- testing
sources:
- 'https://www.youtube.com/watch?v=6ydpi9ybjbi'
summary: A RAG evaluation pattern where the retrieval step is frozen or evaluated independently from the generation step, preventing retrieval changes from confounding generation quality measurement.
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Retrieval Evaluation Isolation

In RAG systems, evaluating changes to the generation step is confounded by changes in the retrieval step. If the index is updated, new documents are added, or a different retrieval strategy is deployed, the downstream generation will receive different context — making it impossible to tell whether a score change is due to the generation change or the retrieval change. ^[extracted]

## The Pattern: Freeze Retrieval, Evaluate Separately

Rather than trying to freeze an entire index (which is expensive and raises privacy concerns), evaluate retrieval and generation as separate, isolated dimensions: ^[extracted]

1. **Retrieval evaluation**: Build a dedicated evaluation framework for retrieval quality alone — did the system retrieve the right documents for a given query? This operates directly on the vector database and search infrastructure. ^[inferred]
2. **Frozen generation evaluation**: For generation evals, freeze the retrieved context at the time the data point was created. The generation step always receives the same retrieved chunks, eliminating retrieval variability from generation measurements. ^[extracted]
3. **Skip stale samples**: If a data point's frozen retrieval no longer contains the answer (e.g., a document was deleted or the answer is no longer in the retrieved set), discard that sample from the generation eval rather than trying to re-retrieve. ^[extracted]

## Why Not Freeze the Entire Index

Freezing the full index at the time of evaluation is technically difficult and expensive: you don't know which parts of the index to freeze, which queries will be run, and document permissions may have changed between the eval creation and evaluation time. Privacy concerns can also arise if documents have been restricted. ^[extracted]

## Notion's Implementation

Notion evaluates retrieval and generation as independent pipelines. Their search evaluation uses vector databases and Elasticsearch-specific metrics for retrieval quality. For generation evaluation, they froze the retrieved results at data point creation time, operated on those frozen chunks, and any data point where the answer is no longer present in the frozen retrieval is simply dropped from the eval. ^[extracted]

## When to Apply

- **RAG systems with dynamic indices**: Any application where the document corpus changes over time. ^[inferred]
- **Model switching evaluations**: Testing a new LLM across your RAG pipeline without conflating retrieval variability. ^[inferred]
- **Retrieval infrastructure upgrades**: Changing vector databases, embedding models, or retrieval strategies independently. ^[inferred]

## Relationship to Other Approaches

- [[concepts/rag-evaluation|RAG Evaluation]] — this pattern is a specific methodology within the broader RAG evaluation practice
- [[concepts/evaluation-first-development|Evaluation-First Development]] — RAG evaluation requires the same evaluation-first rigor with the additional complexity of isolating retrieval from generation
- [[concepts/per-element-llm-judge|Per-Element LLM Judge]] — per-element judges for generation evaluation work cleanly with frozen retrieval contexts
- [[concepts/curated-dataset-strategy|Curated Dataset Strategy]] — small, curated RAG datasets enable the per-sample retrieval freezing approach

## Known Limitations

- Frozen retrieval contexts can become stale — data points may need to be dropped or refreshed over time
- This pattern adds complexity: two evaluation frameworks instead of one end-to-end metric
- The boundary between retrieval and generation is sometimes blurred (e.g., when retrieval includes reranking or context compression)

## Sources

- [[references/notion-ai-building-world-class-products|How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)]] — AI Engineer World's Fair 2025
