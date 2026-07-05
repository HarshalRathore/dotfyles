---
title: "Golden Dataset"
category: concepts
tags:
  - evals
  - evaluation
  - retrieval
  - golden-dataset
  - test-data
  - ai
aliases:
  - golden dataset
  - golden-data-set
  - ground-truth-dataset
summary: "A curated collection of query-document pairs used as ground truth for evaluating retrieval systems. Each pair represents: given this query, this document should be retrieved."
sources:
  - "AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/fast-evals|Fast Evals]]"
    type: uses
  - target: "[[concepts/synthetic-query-generation|Synthetic Query Generation]]"
    type: extends
---

# Golden Dataset

A **golden dataset** is a curated collection of query-document pairs used as ground truth for evaluating retrieval systems. Each pair encodes a test case: given this query, this specific document should be retrieved. ^[extracted]

## Composition

Each entry in a golden dataset contains: ^[extracted]

- **Query** — the user question or search term
- **Document** — the expected retrieval result (the document that should appear in the top-k results)
- Optionally: metadata about query difficulty, domain, or expected rank position

## Building a Golden Dataset

Two primary approaches: ^[extracted]

1. **Real user queries** — collect actual queries logged from production systems. These are the gold standard because they represent real user intent and language patterns.
2. **LLM-generated queries** — use an LLM to generate questions for your documents. Naive prompting ("write me a question for this document") produces overly specific, clean queries that don't match real-world distributions. Better approach: teach the LLM to generate queries that semantically align with real user query distributions.

## Use with Fast Evals

Golden datasets are the data structure that [[concepts/fast-evals|fast evals]] operate on. You run all queries through your retrieval system and measure what fraction retrieve the expected document(s) ^[extracted].

## Limitations

- Building a high-quality golden dataset requires domain expertise or careful synthetic query generation ^[inferred].
- Synthetic queries risk being overly clean or specific compared to real user queries ^[extracted].
- The dataset must be kept current as your document corpus evolves ^[inferred].

## Related

- [[concepts/fast-evals|Fast Evals]] — the evaluation method that uses golden datasets
- [[concepts/synthetic-query-generation|Synthetic Query Generation]] — method for building golden datasets at scale
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — golden datasets are a component of broader eval frameworks
