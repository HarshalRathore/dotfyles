---
title: "Surya OCR"
category: entities
tags:
  - tool
  - open-source
  - ocr
  - computer-vision
  - multilingual
  - ai-model
  - datalab
aliases:
  - Surya
  - SuryaOCR
relationships:
  - target: "[[entities/datalab|Datalab]]"
    type: implements
  - target: "[[entities/vik-paruchuri|Vik Paruchuri]]"
    type: implements
  - target: "[[concepts/model-data-application-harmony|Model-Data-Application Harmony]]"
    type: related_to
sources:
  - "[[sources/watchv=k-iykdmfkhe]]"
summary: "Multilingual OCR model by Datalab. Surya OCR3: 500M parameters, 90 languages, 99% accuracy on internal benchmarks including math. Features character-level bounding boxes and PDF text grounding at line level."
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

# Surya OCR

**Surya OCR** is a multilingual optical character recognition model developed by [[entities/datalab|Datalab]]. It is an open-source AI model that achieves state-of-the-art accuracy across 90 languages. ^[extracted]

## Surya OCR3

At the time of the AIEF2025 talk, Surya OCR3 had been shipped but not publicly announced. Key specifications: ^[extracted]

- **Parameters**: 500 million
- **Languages**: 90
- **Accuracy**: 99% on challenging internal benchmarks (including math)
- **Unique features**:
  - Character-level bounding boxes (not just word-level)
  - PDF text grounding at line level
  - Math recognition capability

## Development Process

Surya OCR3 was developed end-to-end by [[entities/vik-paruchuri|Vik Paruchuri]] and [[entities/tharun|Tharun]] (research engineer at Datalab) without handoffs between specialized teams. The process included: ^[extracted]

1. Customer discovery — talking to customers to understand requirements
2. Research — reading papers and designing architecture
3. Prototyping and data pipeline library building
4. Model training (noting that "it's always 90% data cleaning")
5. Inference code development
6. Customer integration and API connection

This end-to-end ownership by a 2-person team on a challenging model demonstrates the [[concepts/small-ai-teams|small AI team]] thesis — in a large company, this scope would require 4-10 teams with significant context loss at each handoff. ^[inferred]

## Related

- [[entities/datalab|Datalab]] — Developer
- [[entities/vik-paruchuri|Vik Paruchuri]] — Co-developer
- [[entities/tharun|Tharun]] — Co-developer
- [[entities/marker|Marker]] — Sibling open-source product
- [[concepts/small-ai-teams|Small AI Teams with Huge Impact]] — Development model
- [[references/aief2025-small-ai-teams-vik-paruchuri-datalab]] — Source talk
