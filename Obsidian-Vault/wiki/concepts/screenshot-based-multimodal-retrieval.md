---
title: Screenshot-Based Multimodal Retrieval
tags:
- multimodal
- retrieval
- rag
- embeddings
sources:
- 'https://www.youtube.com/watch?v=640kmytxcei'
summary: A simplified approach to retrieving from mixed-modality documents by capturing page-level screenshots, embedding them with VLM-based multimodal embedding models, and storing image references alongs...
provenance:
  extracted: 0.82
  inferred: 0.15
  ambiguous: 0.03
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Screenshot-Based Multimodal Retrieval

A retrieval technique for mixed-modality documents (text interleaved with images, charts, tables) that bypasses the complexity of traditional element-extraction pipelines. Instead of detecting, extracting, and separately processing text and non-text elements, each document page is captured as a screenshot, embedded using a VLM-based (vision-language model) multimodal embedding model, and stored with its image reference in a vector database. ^[extracted]

## Motivation

Traditional text-based [[concepts/chunking-for-retrieval|chunking]] cannot handle documents where images and tables carry essential information alongside text. The conventional multimodal approach has two limitations:

1. **Complex pipeline** — requires object recognition to extract elements, additional LLM calls to summarize images/tables, plus standard chunking and embedding steps
2. **[[concepts/modality-gap|Modality gap]]** — CLIP-based multimodal embedding models use separate encoders for text and images, causing related cross-modal content to embed far apart in vector space

Screenshot-based retrieval solves both by treating a page as a single visual unit and using VLM-based models with shared encoders. ^[extracted]

## Pipeline

### Indexing

1. Convert each document page to a screenshot (or a set of overlapping screenshots for long pages)
2. Store screenshots in blob storage (local, S3, GCS) with a reference path
3. Generate embedding using a VLM-based multimodal embedding model (e.g., Voyage multimodal 3)
4. Store embedding + screenshot reference + metadata (page number, document ID) in a vector database (e.g., [[entities/mongodb|MongoDB]])

### Query

1. Vector search over the stored embeddings with the user's query
2. Retrieve top-K screenshot references
3. Fetch the actual screenshots from blob storage
4. Pass screenshots + original query + conversation history to a [[concepts/multimodal-agent-architecture|multimodal LLM]]

## Why It Works

VLM-based architectures encode both text and visual features through the same network, producing a unified representation. A page screenshot embedding captures the layout, textual content, and visual elements together — the contextual relationships between a chart and its caption are preserved in the embedding. When retrieved, the full screenshot provides the multimodal LLM with all the information it needs to answer, without any element having been lost in extraction. ^[extracted]

## Production Considerations

- For continuity across pages, retrieve adjacent pages (previous/next) alongside the direct match
- Screenshot references in the vector database point to external storage (S3, GCS), not the DB itself — the agent fetches images at query time
- Page-level granularity is a starting point; overlap or intelligent page splitting may help with the lost-in-the-middle problem for very long pages ^[inferred]
- The modality gap avoidance applies specifically to text+image; other modalities (time series, video) need different retrieval strategies

## Limitations

- Screenshots do not preserve selectable text — the multimodal LLM must OCR/read visually
- Page-level granularity may still lose intra-page context when a single page contains multiple distinct sections ^[inferred]
- Requires a multimodal LLM on the generation side, not just for retrieval

## Related

- [[concepts/multimodal-agent-architecture|Multimodal Agent Architecture]] — The agent architecture this retrieval technique powers
- [[concepts/modality-gap|Modality Gap]] — Architectural problem that VLM-based models solve
- [[concepts/chunking-for-retrieval|Chunking for Retrieval]] — Traditional text-only approach
- [[concepts/dense-vector-search|Dense Vector Search]] — The search paradigm
- [[concepts/rag-evaluation|RAG Evaluation]] — How you'd evaluate this approach vs. alternatives

## Sources

- AI Engineer World's Fair 2025 — Apoorva Joshi, MongoDB: <https://www.youtube.com/watch?v=640KMYtxCeI>
