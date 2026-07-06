---
title: Multimodal Video Search
category: concepts
tags:
- video-search
- multimodal
- semantic-search
- embedding
- elasticsearch
- nova-pro
- titan-embeddings
summary: A video search architecture where videos are indexed using multimodal embeddings from frame samples, pooled into single representations, and stored in vector-capable databases for text-to-video ret...
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/pooling-embedding]]'
  type: uses
- target: '[[concepts/multimodal-embedding]]'
  type: uses
- target: '[[concepts/semantic-video-tokenization]]'
  type: related_to
- target: '[[concepts/screenshot-based-multimodal-retrieval]]'
  type: related_to
sources: []
---

**Multimodal video search** is a retrieval architecture where videos are indexed using multimodal embeddings generated from frame samples, enabling text-to-video search. This approach was demonstrated by **[[entities/randall-hunt|Randall Hunt]]** of **[[entities/caylent|Caylent]]** for a stock footage customer.

## Architecture

The demonstrated architecture:

1. **Frame extraction** — Sample frames from videos at intervals
2. **Multimodal embedding** — Generate embeddings for each frame using a multimodal model (**[[entities/amazon-nova|Nova Pro]]**)
3. **Pooling** — Combine per-frame embeddings into a single pooled embedding per video using **[[entities/amazon-titan|Titan V2 multimodal embeddings]]**
4. **Storage** — Store pooled embeddings in **[[entities/elasticsearch]]** with associated metadata (timestamps, captions, features)
5. **Search** — Query with text; the text is embedded and compared against pooled video embeddings

The result: a text query can find relevant videos across a large stock footage library. ^[extracted]

## Key Design Decisions

- **Pooling embeddings** — Instead of storing and searching against thousands of per-frame embeddings, a single pooled embedding represents the entire video. This dramatically reduces storage and query complexity.
- **Elasticsearch as vector store** — Rather than using a dedicated vector database, Elasticsearch handles both vector search and traditional text/metadata search, providing a unified index.
- **Multimodal embedding model** — Titan V2 embeddings create a shared space where text and image embeddings can be compared directly.

## Contrast with Alternatives

- **Semantic video tokenization** (YouTube's approach) — Uses discrete tokens via RQVAE quantization rather than continuous pooled embeddings. More compatible with LLM reasoning but less flexible for arbitrary text queries.
- **Screenshot-based retrieval** — Captures page-level screenshots and embeds them; designed for documents rather than temporal media like video.
- **Caption-based search** — Generates captions for videos and searches text-only. Loses visual information that captions cannot capture.

## Applications

- **Stock footage libraries** — Find specific scenes by describing them in natural language
- **Security camera footage** — Search for events ("person in red jacket running")
- **Sports highlight search** — Find specific plays or moments in game footage
- **Media archives** — Search decades of broadcast content

## Limitations

- **Temporal resolution** — A single pooled embedding cannot answer queries about specific moments within a video
- **Frame sampling strategy** — Quality depends on which frames are sampled; uniform intervals may miss key moments
- **Embedding model quality** — The search quality is bounded by the multimodal embedding model's cross-modal alignment

## Related

- [[concepts/pooling-embedding]] — The pooling technique that enables efficient video-level search
- [[concepts/multimodal-embedding]] — Multimodal embedding models for cross-modal retrieval
- [[concepts/semantic-video-tokenization]] — YouTube's discrete tokenization approach to video understanding
- [[concepts/screenshot-based-multimodal-retrieval]] — Screenshot-based retrieval for document pages
- [[concepts/vector-database-migration]] — Choosing the right vector store (Elasticsearch vs dedicated solutions)

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
