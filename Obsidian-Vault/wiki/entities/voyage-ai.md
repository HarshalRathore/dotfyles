---
title: "Voyage AI"
tags:
  - company
  - embeddings
  - multimodal
  - ai
sources:
  - "AI Engineer World's Fair 2025 - Building Multimodal AI Agents From Scratch — Apoorva Joshi, MongoDB - https://www.youtube.com/watch?v=640KMYtxCeI"
summary: "Company providing multimodal embedding models, including the VLM-based Voyage multimodal 3 model used in screenshot-based multimodal retrieval architectures."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Voyage AI

A company providing multimodal embedding models for search and retrieval. Their Voyage multimodal 3 model is a VLM-based (vision-language model) embedding model that uses a shared encoder for both text and images, avoiding the [[concepts/modality-gap|modality gap]] problem that affects CLIP-based multimodal embedding models.

## Relevance

Highlighted in Apoorva Joshi's workshop at AI Engineer World's Fair 2025 as the example multimodal embedding model for [[concepts/screenshot-based-multimodal-retrieval|screenshot-based multimodal retrieval]]. The model's VLM architecture allows it to process page-level screenshots as single coherent units, preserving contextual relationships between text and visual elements.

## Related

- [[concepts/modality-gap|Modality Gap]] — Architectural limitation that VLM-based models avoid
- [[concepts/screenshot-based-multimodal-retrieval|Screenshot-Based Multimodal Retrieval]] — Retrieval technique using Voyage's models
- [[concepts/multimodal-agent-architecture|Multimodal Agent Architecture]] — Architecture using VLM-based embeddings for retrieval
- [[references/building-multimodal-ai-agents-from-scratch-apoorva-joshi-mongodb|Building Multimodal AI Agents From Scratch]] — Workshop reference

## Sources

- AI Engineer World's Fair 2025 — Apoorva Joshi, MongoDB: <https://www.youtube.com/watch?v=640KMYtxCeI>
