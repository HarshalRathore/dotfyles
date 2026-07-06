---
title: Llama 3
category: entities
tags:
- llm
- open-source
- meta
- foundation-model
- fine-tuning
- search-relevance
- cross-encoder
- aief2025
aliases:
- Llama3
- Llama 3 model
sources:
- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/pinterest|Pinterest]]'
  type: used_by
- target: '[[concepts/cross-encoder-relevance-model|Cross-Encoder Relevance Model]]'
  type: implements
- target: '[[concepts/model-size-scaling|Model Size Scaling]]'
  type: demonstrates
summary: Llama 3
---

# Llama 3

Llama 3 is an **open-source large language model** from Meta. A **8 billion parameter variant** was used by Pinterest as the foundation for their search relevance teacher model. ^[extracted]

## Use in Pinterest Search Relevance

Pinterest fine-tuned an open-source Llama 3 model on their internal data to adapt it for Pinterest-specific content and relevance prediction. The 8B variant was used as a **cross-encoder teacher model** — it concatenates query and pin text, produces an embedding through the LLM, and feeds that embedding through an MLP layer for five-level relevance scoring. ^[extracted]

## Performance

The fine-tuned Llama 3 (8B) model achieved:

- **12% improvement** over a multilingual BERT-based model
- **20% improvement** over the previous search-stage embedding model

Performance continued to improve with more advanced LLMs and larger model sizes, demonstrating that LLMs are highly effective for relevance prediction tasks. ^[extracted]

## Role in Distillation Pipeline

Llama 3 served as the **teacher model** in a knowledge distillation pipeline. It was trained on a small set of human-labeled data and then used to label training data at scale (100x) from daily search logs. The resulting labeled data trained a smaller bi-encoder **student model** for online serving. ^[extracted]

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
