---
title: HotPotQA
category: concepts
tags:
- evals
- benchmarking
- multi-hop
- retrieval
- static-eval-sets
aliases:
- hotpot qa
sources:
- 'AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU'
provenance:
  extracted: 0.9
  inferred: 0.06
  ambiguous: 0.04
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/static-eval-sets]]'
  type: is_a
- target: '[[concepts/simpleqa]]'
  type: contrasts_with
summary: HotPotQA
---

# HotPotQA

**HotPotQA** is a benchmark dataset designed to evaluate an AI system's ability to answer multi-hop questions — questions where reasoning across multiple documents is required to retrieve the final answer. ^[extracted]

## Characteristics

- **Question type**: Multi-hop questions requiring cross-document reasoning
- **Answer format**: Final answer derived from synthesizing information across multiple sources
- **Dataset type**: Static (fixed at creation time)

## Role in Evaluation

HotPotQA complements [[concepts/simpleqa|SimpleQA]] by testing a different dimension of retrieval capability. While SimpleQA evaluates single-document factual retrieval, HotPotQA evaluates the system's ability to: ^[extracted]

1. Identify that multiple sources are needed
2. Retrieve relevant documents from different domains
3. Reason across documents to synthesize a final answer

## Future Direction

The Tavily dynamic eval set agent aims to support multi-hop question generation similar to HotPotQA as a next step, extending beyond simple fact-based questions. ^[extracted]

## Related

- [[concepts/simpleqa]] — The single-hop counterpart
- [[concepts/static-eval-sets]] — HotPotQA is a static eval set
- [[concepts/dynamic-eval-sets]] — Dynamic eval sets aim to generate multi-hop questions too
