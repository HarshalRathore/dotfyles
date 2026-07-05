---
title: "LlamaParse"
category: entities
tags:
  - parsing
  - document-parsing
  - image-parsing
  - markdown-output
  - llamaindex
  - vendor
summary: LlamaParse is a LlamaIndex product for parsing documents and images into structured markdown. Uses interleaved LLM/LVM and traditional parsing with agentic validation for complex enterprise documents. Benchmarked against SANA 3.5, 4.0, Gemini 2.5 Pro, and OpenAI 4.1.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/parsing]]"
    type: implements
  - target: "[[entities/alice-ai-sdr]]"
    type: uses
  - target: "[[concepts/complex-document-understanding]]"
    type: implements
---

# LlamaParse

LlamaParse is a document and image parsing product from **LlamaIndex**. It converts PDFs, images, and other document formats into structured markdown output, with particular strength in handling complex enterprise documents (embedded tables, charts, irregular layouts, headers, footers).

## Selection by 11x

11x chose LlamaParse for their Alice knowledge base because:

1. **Most file type support** — Supported the largest number of document/image file types among evaluated solutions
2. **Excellent support** — LlamaIndex's team (including engineer Jerry) responded within hours, setting up a Slack channel for direct support

## Approach

LlamaParse uses an interleaved approach combining LLMs and LVMs with traditional parsing techniques, plus agentic validation and reasoning tokens. This achieves higher accuracy than either pure LLM approaches (like screenshotting PDFs to ChatGPT) or pure traditional approaches. ^[extracted]

## Benchmarking

LlamaIndex benchmarks LlamaParse modes using SANA 3.5, 4.0, Gemini 2.5 Pro, and 4.1 from OpenAI, claiming outperformance of all existing parsing benchmarks and tools across open-source and proprietary categories. ^[extracted]

## Output

Converts documents like sales decks (PDFs) into structured markdown that preserves semantic meaning and formatting, suitable for downstream chunking and embedding.

## Sources

- AIEF2025 talk: "Building Alice's Brain" by Sherwood & Satwik, 11x
- "AIEF2025 - Building AI Agents that actually automate Knowledge Work - Jerry Liu, LlamaIndex - https://www.youtube.com/watch?v=jVGCulhBRZI"
