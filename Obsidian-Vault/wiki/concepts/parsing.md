---
title: Parsing
category: concepts
tags:
- parsing
- rag
- multimodal
- document-processing
- markdown
summary: The process of converting non-text resources (PDFs, images, websites, audio, video) into structured text (markdown) that LLMs can understand. A critical first step in any RAG pipeline.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/chunking-strategies]]'
  type: derived_from
- target: '[[concepts/multimodal-evaluation]]'
  type: related_to
- target: '[[concepts/knowledge-base-pattern]]'
  type: uses
sources: []
---

# Parsing

**Parsing** is the process of converting non-text resources into structured text that LLMs can understand. It is the critical first step in any RAG pipeline that handles multimodal inputs.

## Definition

Parsing makes non-text information legible to a large language model. Resources like PDFs, images, websites, audio recordings, and video files contain information that LLMs cannot directly process — parsing bridges this gap by extracting and structuring the content.

## Why Parse Instead of Using Multimodal Models Directly?

Multimodal models exist but have restrictions that make parsing still relevant:

- Token limits on image/video input
- Cost of sending large multimodal inputs per query
- Parsing produces reusable, cached text that can be chunked and indexed once, then queried many times
- Structured output (markdown) preserves semantic meaning better than raw multimodal tokens

## Output Format: Markdown

The preferred parsing output is **markdown** — a text format that contains structural information and formatting that is semantically meaningful. Headings, lists, tables, and other markdown elements preserve document structure that aids downstream chunking and retrieval.

## Vendor vs. In-House Parsing

Building parsing in-house is generally discouraged for production systems:

- Multiple resource types require multiple specialized parsers
- Parsing quality is a moving target as document formats evolve
- Companies exist whose entire business is building excellent parsers for specific formats
- Time-to-market pressure favors vendor solutions

## Vendor Selection Criteria

When selecting parsing vendors, key considerations include:

1. **Resource type support** — Does it handle all needed formats?
2. **Output format** — Markdown output preferred
3. **Delivery mechanism** — Webhook support for async processing
4. **Accuracy** — How well does extracted output match original?
5. **Comprehensiveness** — How much information is captured in the output?
6. **Cost** — Per-page or per-resource pricing

## Sources

- AIEF2025 talk: "Building Alice's Brain" by Sherwood & Satwik, 11x
