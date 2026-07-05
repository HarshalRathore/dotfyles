---
title: "AIEF2025 - What We Learned from Using LLMs in Pinterest"
category: references
tags: [aief2025, pinterest, search-relevance, cross-encoder, knowledge-distillation, bi-encoder, llm, mukuntha-narayanan, han-wang]
sources:
  - "AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/pinterest|Pinterest]]"
    type: about
  - target: "[[entities/mukuntha-narayanan|Mukuntha Narayanan]]"
    type: speaker
  - target: "[[entities/han-wang|Han Wang]]"
    type: speaker
  - target: "[[entities/llama-3|Llama 3]]"
    type: mentions
---

# AIEF2025 - What We Learned from Using LLMs in Pinterest

**Speakers**: Mukuntha Narayanan, Han Wang (Machine Learning Engineers, Pinterest Search Relevance Team)  
**Event**: AI Engineer World's Fair 2025  
**Video**: https://www.youtube.com/watch?v=XdAWgO11zuk

## TL;DR

Pinterest integrated LLMs into their search relevance pipeline using a two-phase approach: a large cross-encoder teacher model (fine-tuned Llama 3, 8B) for high-accuracy relevance prediction, distilled into a scalable bi-encoder student model via semi-supervised learning on daily search logs. The approach achieved international relevance gains despite US-centric training data.

## Problem / Motivation

Pinterest search handles **6+ billion searches per month** across **45+ languages** and **100+ countries**. The existing relevance model (multilingual BERT-based embeddings) was insufficient for the scale and quality demands. The team needed to improve relevance prediction while maintaining production-scale serving latency. ^[extracted]

## Method / Architecture

### Teacher Model (Cross-Encoder)

- Concatenate query + pin text → pass through fine-tuned LLM → embedding → MLP → five-level relevance score
- Llama 3 (8B) fine-tuned on Pinterest internal data
- **12% improvement** over multilingual BERT baseline, **20% improvement** over previous search-stage embedding model

### Student Model (Bi-Encoder)

- Query and pin encoded separately, cached offline
- Trained on teacher-generated soft labels from daily search logs
- Semi-supervised learning: human labels → teacher fine-tuning → 100x scaled teacher labels → student training
- ~85% query cache hit rate, offline pin embedding inference

### Content Features (5 Sources)

1. Pin title and description
2. VLM-generated synthetic image captions
3. Board titles (user-curated collections)
4. High-engagement search queries
5. Additional user engagement signals

Ablation studies confirmed each feature source adds incremental performance. ^[extracted]

## Key Results

- Cross-encoder LLM substantially outperformed traditional embedding-based relevance models
- Knowledge distillation preserved relevance gains while enabling production-scale serving
- International relevance improvements despite predominantly US training data
- LLMs demonstrated strong cross-domain and cross-language generalization

## Limitations

- Teacher model too expensive for online serving at scale
- Student model accuracy is bounded by teacher quality
- Human annotation remains the bottleneck for initial teacher training quality
- Error propagation from teacher to student is a risk ^[inferred]

## Related

- [[concepts/cross-encoder-relevance-model|Cross-Encoder Relevance Model]]
- [[concepts/knowledge-distillation-search|Knowledge Distillation for Search]]
- [[concepts/bi-encoder-search|Bi-Encoder Search]]
- [[concepts/semi-supervised-learning|Semi-Supervised Learning]]
- [[entities/pinterest|Pinterest]]
- [[entities/llama-3|Llama 3]]

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
