---
title: "Modality Gap"
tags:
  - multimodal
  - embeddings
  - retrieval
  - architecture
sources:
  - "AI Engineer World's Fair 2025 - Building Multimodal AI Agents From Scratch — Apoorva Joshi, MongoDB - https://www.youtube.com/watch?v=640KMYtxCeI"
summary: "A limitation of CLIP-based multimodal embedding models where text and image vectors from separate encoders occupy distinct regions of the embedding space, causing irrelevant items of the same modality to cluster together rather than related items across modalities."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Modality Gap

A limitation of early multimodal embedding models (notably those based on [[entities/openai|OpenAI's]] CLIP architecture) where text and images are passed through **separate neural encoders** before their embeddings are projected into a shared space. This architectural separation means that text vectors of unrelated content may cluster together in the embedding space, while text and image vectors of the same concept may sit far apart — a phenomenon called the modality gap. ^[extracted]

## How It Arises

CLIP-based architectures use a cross-modal contrastive training objective (align image and text pairs) but maintain separate encoders for each modality:

- Text encoder → text embedding
- Image encoder → image embedding
- A projection layer maps both into a shared space

Because the representations are computed independently before alignment, the shared space retains a structural separation by modality — text vectors naturally sit closer to other text vectors, and image vectors to other image vectors, regardless of semantic content. ^[extracted]

## Impact on Retrieval

For [[concepts/screenshot-based-multimodal-retrieval|multimodal retrieval]], the modality gap means:

- A text query about a chart may retrieve unrelated text chunks before the actual relevant chart image
- Cross-modal similarity search (text query → image result) has degraded accuracy
- Mixed-modality documents lose coherence — a page's text and its embedded chart may not embed near each other

## The VLM-Based Solution

Vision-language model (VLM) architectures solve the modality gap by using a **single shared encoder** for both text and images. Both modalities are vectorized through the same network, producing a unified representation that preserves contextual relationships between text and visual elements. This allows a single screenshot of a document page to be embedded as a coherent whole, rather than treating text and images as separate signals. ^[extracted]

Voyage multimodal 3 is an example of a VLM-based multimodal embedding model that avoids the modality gap. Gemini 2.0 Flash Experimental and GPT-4V are multimodal LLMs that similarly process both modalities through a unified architecture.

## Related

- [[concepts/multimodal-agent-architecture|Multimodal Agent Architecture]] — Architecture that depends on VLM-based embeddings
- [[concepts/screenshot-based-multimodal-retrieval|Screenshot-Based Multimodal Retrieval]] — Retrieval technique enabled by VLM-based models
- [[concepts/dense-vector-search|Dense Vector Search]] — The search paradigm using these embeddings
- [[concepts/multi-model-world|Multi-Model World]] — Context of competing model architectures

## Sources

- AI Engineer World's Fair 2025 — Apoorva Joshi, MongoDB: <https://www.youtube.com/watch?v=640KMYtxCeI>
