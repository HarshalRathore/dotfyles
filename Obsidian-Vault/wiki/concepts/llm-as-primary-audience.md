---
title: LLM as Primary Audience
category: concepts
tags:
- llm-audience
- api-design
- documentation
- agent-first
- product-design
summary: The thesis that the primary audience of any product, service, library, or API is now a language model, not a human. Documentation, APIs, and interfaces should be optimized for machine consumption f...
sources:
- AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04 00:00:00+00:00
updated: 2026-07-04 00:00:00+00:00
relationships:
- target: '[[concepts/agent-readable-docs|Agent-Readable Docs]]'
  type: extends
- target: '[[concepts/llms-txt|LLMs.txt]]'
  type: related_to
- target: '[[concepts/curl-over-click|Curl Over Click]]'
  type: related_to
- target: '[[concepts/api-first-design-for-agents|API-First Design for Agents]]'
  type: related_to
---

## LLM as Primary Audience

The thesis that the primary audience of your product, service, library, or API is now a language model, not a human. This is described as a "tough pill to swallow" but represents the practical reality of how developers interact with code, APIs, and documentation in the age of AI coding tools.

### Evidence

The shift is visible across multiple dimensions:

- **Documentation** — Developers paste llms.txt files into their AI editors rather than reading HTML docs in a browser
- **APIs** — LLMs consume curl commands and OpenAPI schemas rather than interactive API explorers
- **Model discovery** — Users interact with models through ChatGPT or Claude conversations rather than static model pages
- **Code understanding** — Cloned repositories are understood by AI editors consuming structured documentation

### Design Implications

This thesis has concrete implications for product design:

1. **Documentation first for machines** — Single clean markdown files beat elaborate HTML sites
2. **APIs as contracts** — OpenAPI schemas are the source of truth, not human-rendered documentation
3. **Curl as the universal interface** — A curl command encodes everything an LLM needs
4. **Interactive over static** — Linking to ChatGPT or Claude for model conversations beats reading static pages

### The Karpathy Connection

Andre Karpathy's Menugen project and his broader work exemplify this thesis. He built tools that are designed to be consumed by AI systems (via llms.txt, curl, OpenAPI) while still remaining usable by humans. The design principle "design like Karpathy is watching" means optimizing for the AI developer experience first.
