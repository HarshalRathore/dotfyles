---
title: "Fast Evals"
category: concepts
tags:
  - evals
  - retrieval
  - evaluation
  - ai
  - methodology
  - fast-evals
  - golden-datasets
aliases:
  - fast evaluation
  - rapid evals
summary: "A lightweight evaluation method using sets of query-document pairs that run in seconds for pennies, enabling rapid experimentation and empirical comparison of retrieval systems."
sources:
  - "AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/golden-dataset|Golden Dataset]]"
    type: uses
  - target: "[[concepts/retrieval-evaluation-isolation|Retrieval Evaluation Isolation]]"
    type: extends
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: contrasts-with
---

# Fast Evals

**Fast evals** are a lightweight evaluation method for retrieval systems using sets of query-document pairs. Each pair represents a test case: given this query, this document should be retrieved. A collection of such pairs forms a **golden dataset** ^[extracted].

## How It Works

1. **Build a golden dataset** — a set of (query, document) pairs where the document is the expected retrieval result for the query ^[extracted].
2. **Run queries** — feed all queries through the retrieval system and check if the expected documents appear in the results (at position k, typically k=5, 10, or 20) ^[extracted].
3. **Measure success rate** — the percentage of queries that retrieve the expected document(s) ^[extracted].

## Key Properties

- **Speed** — runs in seconds, not hours ^[extracted].
- **Cost** — pennies per run, not hundreds of dollars ^[extracted].
- **Iteration speed** — enables rapid experimentation because evaluation time and energy drop dramatically ^[extracted].
- **Empirical** — measures what actually works for your data, not what public benchmarks say should work ^[extracted].

## Contrast with Alternatives

Fast evals contrast with two other approaches: ^[extracted]

- **LLM-as-judge** — expensive ($600, 3 hours for a run), captures qualitative dimensions like factuality but is too slow for rapid iteration.
- **Public benchmarks (MTEB)** — useful for general model selection but overly clean data that doesn't reflect real-world query distributions.

## When to Use

- **Embedding model selection** — compare models empirically on your data before committing to re-embedding ^[extracted].
- **Chunking strategy comparison** — test different chunk sizes and strategies quickly ^[inferred].
- **Retrieval pipeline changes** — evaluate any modification to the retrieval pipeline systematically ^[inferred].

## Limitations

- Requires an initial investment to build the golden dataset ^[inferred].
- Measures retrieval quality only, not generation quality ^[inferred].
- Synthetic queries may not perfectly match real user behavior without careful alignment ^[inferred].

## Related

- [[concepts/golden-dataset|Golden Dataset]] — the data structure fast evals operate on
- [[concepts/synthetic-query-generation|Synthetic Query Generation]] — method for building golden datasets at scale
- [[concepts/retrieval-evaluation-isolation|Retrieval Evaluation Isolation]] — related pattern for isolating retrieval evals
- [[entities/chroma|Chroma]] — organization that popularized this approach
