---
title: "VLM-Generated Image Captions"
category: concepts
tags: [vlm, vision-language-model, image-captioning, multimodal, content-annotation, search-relevance, aief2025]
aliases:
  - VLM image captions
  - synthetic image captions
sources:
  - "AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/content-annotation-search|Content Annotation for Search]]"
    type: used_in
  - target: "[[concepts/multimodal-search|Multimodal Search]]"
    type: enables
  - target: "[[concepts/document-enrichment|Document Enrichment]]"
    type: related_to
---

# VLM-Generated Image Captions

Synthetic text descriptions of images produced by **Vision Language Models (VLMs)**. In Pinterest's search relevance pipeline, VLM-generated captions serve as a direct text representation of visual content, enabling text-based relevance models to understand pin imagery without manual annotation. ^[extracted]

## Role in Content Annotation

VLM captions are one of five feature sources in Pinterest's content annotation strategy. They provide:

- **Direct image-to-text extraction** — the VLM reads the image and generates a descriptive caption
- **Semantic richness** — captures visual concepts, objects, styles, and contexts that text metadata alone may miss
- **Scalability** — automated generation across billions of pins without human effort

In ablation studies, VLM captions alone provided a "very solid baseline" for relevance prediction, confirming that visual understanding significantly improves text-based relevance models. ^[extracted]

## Why VLMs Matter for Visual Search

Pinterest is fundamentally a **visual discovery platform** — pins are primarily images, not text. A relevance model that only sees title and description misses the primary signal (the image itself). VLM captions bridge this gap by converting visual content into a textual representation that the relevance model can process alongside other text features. ^[inferred]

## Related

- [[concepts/content-annotation-search|Content Annotation for Search]] — VLM captions are one of five annotation sources
- [[concepts/multimodal-search|Multimodal Search]] — combining visual and textual signals
- [[concepts/document-enrichment|Document Enrichment]] — adding metadata to improve retrieval

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
