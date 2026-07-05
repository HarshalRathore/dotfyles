---
title: "Datalab"
category: entities
tags:
  - company
  - ai
  - document-intelligence
  - open-source
  - aief2025
aliases:
  - DataLab
relationships:
  - target: "[[entities/vik-paruchuri|Vik Paruchuri]]"
    type: implements
  - target: "[[entities/marker|Marker]]"
    type: implements
  - target: "[[entities/surya|Surya OCR]]"
    type: implements
  - target: "[[concepts/small-ai-teams|Small AI Teams with Huge Impact]]"
    type: related_to
sources:
  - "[[sources/watchv=k-iykdmfkhe]]"
summary: "AI document intelligence company founded by Vik Paruchuri. Seven-figure ARR with 4-person team. Built open-source tools Marker and Surya OCR. Customers include tier-one AI labs, universities, Fortune 500, and Gamma."
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Datalab

**Datalab** is an AI document intelligence company founded by [[entities/vik-paruchuri|Vik Paruchuri]]. It is a prime example of a small AI team achieving huge impact. ^[extracted]

## Company Profile

- **CEO**: [[entities/vik-paruchuri|Vik Paruchuri]]
- **Team size**: 4 (Vik + [[entities/tharun|Tharun]] + [[entities/faraz|Faraz]] + one other)
- **Revenue**: Seven-figure ARR, 5x growth since January 2025
- **Stage**: Seed round raised
- **Customers**: Tier-one AI labs, universities, Fortune 500 companies, AI startups including [[entities/gamma|Gamma]]

## Products

Datalab is a document processing / document intelligence company. Its key open-source products include: ^[extracted]

- **[[entities/marker|Marker]]** — Document processing tool. Recently re-architected to be extremely modular, easy to work with, and well-documented for AI-assisted development.
- **[[entities/surya|Surya OCR]]** — Multilingual OCR model. Surya OCR3 (unannounced at time of talk) is 500M parameters, supports 90 languages, achieves 99% accuracy on challenging internal benchmarks including math, and features unique capabilities like character-level bounding boxes and PDF text grounding at line level.

## Operating Model

Datalab operates as a small team of generalists. The engineering and research team handles the entire product lifecycle end-to-end — customer discovery, architecture design, data pipeline building, model training, inference code, and customer integration — without handoffs between specialized teams. ^[extracted]

They use a simple tech stack: server-rendered HTML with HTMX and Alpine.js (no React or fancy frontend frameworks), clean modular code optimized for AI-assisted development, and aggressive component reuse between on-prem and API deployments. ^[extracted]

## Related

- [[entities/vik-paruchuri|Vik Paruchuri]] — CEO and founder
- [[entities/marker|Marker]] — Open-source document processing tool
- [[entities/surya|Surya OCR]] — Open-source multilingual OCR model
- [[entities/gamma|Gamma]] — Customer
- [[concepts/small-ai-teams|Small AI Teams with Huge Impact]] — Operating philosophy
- [[concepts/high-trust-culture|High-Trust Culture]] — Team dynamics
- [[references/aief2025-small-ai-teams-vik-paruchuri-datalab]] — Source talk
