---
title: Chunking Strategies
category: concepts
tags:
- chunking
- rag
- text-splitting
- vector-database
- semantic-units
summary: 'Strategies for splitting parsed text into retrievable semantic units for vector database storage. Key decision: what logical units to preserve while keeping chunks within embedding token limits.'
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/parsing]]'
  type: derived_from
- target: '[[concepts/agentic-rag]]'
  type: related_to
- target: '[[concepts/knowledge-base-pattern]]'
  type: uses
sources: []
---

# Chunking Strategies

Chunking is the process of splitting parsed text into retrievable semantic units for storage in a vector database. The strategy determines what logical units are preserved and how well they can be retrieved later.

## Key Design Question

What logical units am I trying to preserve in my data? The chunking strategy should keep these units intact while ensuring chunks are small enough to embed effectively and retrieve precisely.

## Common Strategies

### Token-Based Splitting

Split text at fixed token boundaries. Simple but ignores semantic structure — a paragraph or concept may be split mid-thought.

### Sentence-Based Splitting

Split at sentence boundaries. Better preserves local coherence but may produce chunks that are too granular or too large depending on sentence length.

### Header-Based Splitting

Split at document headers (H1, H2, H3). Preserves the document's natural section structure. Works well for documents with clear hierarchical organization.

### LLM-Based Splitting

Use an LLM to determine semantic chunk boundaries. Can produce high-quality chunks but adds cost and latency.

## Waterfall Strategy

A practical approach combines multiple strategies in a waterfall:

1. **Split on markdown headers first** — Preserve the document's section structure
2. **Then split on sentences** — If a section is too large, break it into sentences
3. **Then split on tokens** — As a final fallback for any remaining oversized chunks

This preserves structure at every level while ensuring no chunk exceeds token limits.

## Resource-Type Considerations

Different resource types may benefit from different chunking strategies:

- **PDFs/Documents** — Header-based + sentence splitting works well for structured content
- **Websites** — Header-based splitting aligned with HTML heading structure
- **Video transcripts** — May need time-range or topic-based chunking instead of header-based
- **Images** — OCR output may need different strategies depending on image type

## Trade-offs

- **Smaller chunks** — More precise retrieval but may lose context
- **Larger chunks** — More context but risk diluting meaning and reducing retrieval precision
- **Structure preservation** — Markdown elements (headings, lists) carry meaning that should be preserved across chunk boundaries

## Sources

- AIEF2025 talk: "Building Alice's Brain" by Sherwood & Satwik, 11x
