---
title: Chunking for Retrieval
tags: [search, retrieval, preprocessing, chunking]
sources: ["[[sources/ai-engineer-worlds-fair-2025-information-retrieval-from-the-ground-up-philipp-krenn]]", "[[sources/watchv=4xe_imyxbqc]]"]
summary: "Strategy for splitting documents into smaller segments before embedding for dense vector search. Crucial because dense vector representations can only hold limited context per chunk."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-03T08:30:00Z
updated: 2026-07-03T08:30:00Z
---

# Chunking for Retrieval

The practice of splitting documents into smaller segments before generating embeddings for [[concepts/dense-vector-search|dense vector search]]. Required because a dense vector representation can only hold so much context — attempting to embed an entire book as one vector loses all per-page resolution. ^[extracted]

## Chunking Strategies

| Strategy | Description | Trade-off |
|---|---|---|
| **By page** | Split on page boundaries | Natural breaks, but pages vary in content density |
| **By paragraph** | Split on paragraph breaks | Semantic units preserved, but variable length |
| **By sentence** | Split on sentence boundaries | Fine granularity, but loses cross-sentence context |
| **Overlapping** | Adjacent chunks share content overlap | Preserves boundary context, increases storage and cost |
| **Non-overlapping** | Clean splits, no duplication | Simpler and cheaper, but may split coherent passages |

There is no universal optimal strategy — it depends on your model, data, and use case. ^[extracted]

## The Multimodal Challenge

Chunking alone fails for documents with mixed modalities (text interleaved with images, charts, tables). Traditional multimodal approaches add multiple stages: object recognition to identify and extract non-text elements, separate LLM calls to summarize images/tables, then standard chunking and embedding of the text. This complex pipeline introduces two major limitations: loss of context at chunk boundaries is amplified because images are extracted away from their surrounding text, and [[concepts/modality-gap|modality gap]] in CLIP-based multimodal embedding models causes cross-modal content to embed poorly. ^[extracted]

An alternative approach — [[concepts/screenshot-based-multimodal-retrieval|screenshot-based retrieval]] — bypasses chunking entirely by embedding page-level screenshots with VLM-based models (shared encoder for text and images). This preserves the contextual relationship between text and visual elements that chunking destroys. ^[extracted]

## Chunking in Practice

Modern search engines like [[entities/elastic|Elasticsearch]] can handle chunking automatically behind the scenes for semantic text fields, breaking up long text and linking back to the original document position for highlighting. ^[extracted]

When chunks are retrieved, the system can highlight the specific fragment that matched, showing directly which part of a long document was most relevant. ^[extracted]

## Related

- [[concepts/dense-vector-search]]
- [[concepts/information-retrieval]]
- [[concepts/lexical-search]]
- [[concepts/sparse-vector-retrieval]]
- [[concepts/screenshot-based-multimodal-retrieval|Screenshot-Based Multimodal Retrieval]] — Alternative that bypasses chunking for mixed-modality documents
- [[concepts/modality-gap|Modality Gap]] — Problem with CLIP-based multimodal embeddings
- [[concepts/multimodal-agent-architecture|Multimodal Agent Architecture]] — Architecture using screenshot-based retrieval

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
