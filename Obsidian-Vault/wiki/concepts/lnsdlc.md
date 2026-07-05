---
title: "LNSDLC"
tags:
  - sdlc
  - lifecycle
  - ai-engineering
  - standard-model
  - architecture
sources:
  - "[[sources/watchv=ihkyfhu6jey]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# LNSDLC

**LNSDLC** (Language Model Software Development Lifecycle) is a proposed standard model for AI engineering — an adaptation of the traditional Software Development Lifecycle (SDLC) to the realities of building with language models.

## Proposed by swyx

[[entities/swyx|swyx]] introduced LNSDLC as one of several candidate standard models for AI engineering in his AIEF2025 opening keynote. The concept extends the traditional SDLC to account for the unique characteristics of AI development.

## Two Versions

swyx described two versions of LNSDLC:

1. **Basic version** — A straightforward adaptation of SDLC phases (plan, build, test, deploy, monitor) to AI development
2. **Extended version** — Includes intersecting concerns of all the tooling you buy, reflecting the complex tooling landscape of modern AI engineering

## Key Insight

The central insight of LNSDLC is that the **early stages are becoming commodity** (LLMs, monitoring, RAG are free-tier) while the **later stages represent real engineering value** (evals, security orchestration, production work). This shifts where engineers should focus their effort.

## Relationship to SDLC Commoditization

LNSDLC is the structural framework that explains *why* SDLC commoditization happens — it's not that the early stages are inherently cheap, but that the lifecycle model naturally pushes value toward the later stages where the hard engineering work lives.

## Related

- [[concepts/sdlc-commoditization]] — The commoditization insight LNSDLC explains
- [[concepts/standard-models-ai-engineering]] — LNSDLC as a candidate standard model
- [[concepts/lmos]] — Another candidate standard model (LMOS)
- [[references/aief2025-designing-ai-intensive-applications-swyx]] — Full keynote where LNSDLC was proposed
