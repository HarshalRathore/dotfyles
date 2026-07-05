---
title: "Marker"
category: entities
tags:
  - tool
  - open-source
  - document-processing
  - ai
  - datalab
relationships:
  - target: "[[entities/datalab|Datalab]]"
    type: implements
  - target: "[[entities/vik-paruchuri|Vik Paruchuri]]"
    type: implements
  - target: "[[concepts/ai-native-toolchain|AI-Native Toolchain]]"
    type: related_to
sources:
  - "[[sources/watchv=k-iykdmfkhe]]"
summary: "Open-source document processing tool by Datalab. Recently re-architected to be extremely modular, easy to work with, and well-documented — optimized for AI-assisted development."
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Marker

**Marker** is an open-source document processing tool built by [[entities/datalab|Datalab]]. It is one of Datalab's flagship products alongside [[entities/surya|Surya OCR]]. ^[extracted]

## Architecture Philosophy

Marker was recently re-architected to be: ^[extracted]

- **Extremely modular** — Clean component boundaries
- **Easy to work with** — Clear code structure
- **Well-documented** — Comprehensive documentation for contributors and AI assistants

This re-architecture was specifically designed to make the codebase easier for AI tools to add to and modify, aligning with Datalab's broader philosophy of using AI to handle the "easy low leverage pieces" while humans focus on higher-level decisions. ^[inferred]

## Related

- [[entities/datalab|Datalab]] — Developer
- [[entities/vik-paruchuri|Vik Paruchuri]] — Builder
- [[entities/surya|Surya OCR]] — Sibling product
- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — AI-assisted development philosophy
- [[references/aief2025-small-ai-teams-vik-paruchuri-datalab]] — Source talk
