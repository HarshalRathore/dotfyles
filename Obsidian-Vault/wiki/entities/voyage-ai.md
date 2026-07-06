---
title: "Voyage AI"
category: entities
tags:
  - company
  - embeddings
  - multimodal
  - ai
aliases: [Voyage, voyage-ai]
summary: "Company providing multimodal embedding models, including the VLM-based Voyage multimodal 3 model used in screenshot-based multimodal retrieval architectures."
sources:
  - "https://www.youtube.com/watch?v=640kmytxcei"
  - "AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk"
  - "AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-03
updated: 2026-07-05
relationships:
  - target: "[[entities/mongodb]]"
    type: related_to
  - target: "[[entities/tengyu-ma]]"
    type: related_to
  - target: "[[concepts/embedding-models]]"
    type: related_to
  - target: "[[concepts/matricial-learning]]"
    type: related_to
  - target: "[[entities/frank-liu]]"
    type: related_to
---

# Voyage AI

A company providing multimodal embedding models for search and retrieval. Their Voyage multimodal 3 model is a VLM-based (vision-language model) embedding model that uses a shared encoder for both text and images, avoiding the [[concepts/modality-gap|modality gap]] problem that affects CLIP-based multimodal embedding models.

## Relevance

Highlighted in Apoorva Joshi's workshop at AI Engineer World's Fair 2025 as the example multimodal embedding model for [[concepts/screenshot-based-multimodal-retrieval|screenshot-based multimodal retrieval]]. The model's VLM architecture allows it to process page-level screenshots as single coherent units, preserving contextual relationships between text and visual elements.

## MongoDB Acquisition

Voyage AI was acquired by [[entities/mongodb|MongoDB]]. Its CEO and co-founder [[entities/tengyu-ma|Tengyu Ma]] now leads embedding model and RAG research at MongoDB. At AIEF2025, Tengyu presented the state of RAG in 2025, covering embedding model progress, matricial learning, quantization-aware training, and RAG enhancement techniques.


## Related

- [[concepts/modality-gap|Modality Gap]] — Architectural limitation that VLM-based models avoid
- [[concepts/screenshot-based-multimodal-retrieval|Screenshot-Based Multimodal Retrieval]] — Retrieval technique using Voyage's models
- [[concepts/multimodal-agent-architecture|Multimodal Agent Architecture]] — Architecture using VLM-based embeddings for retrieval
- [[concepts/domain-specific-embedding-models]] — Voyage Code 3, Voyage Law 2
- [[concepts/re-ranking]] — Voyage also provides re-rankers for RAG
- [[references/building-multimodal-ai-agents-from-scratch-apoorva-joshi-mongodb|Building Multimodal AI Agents From Scratch]] — Workshop reference

## Sources

- AI Engineer World's Fair 2025 — Apoorva Joshi, MongoDB: <https://www.youtube.com/watch?v=640KMYtxCeI>
- AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk
- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI
