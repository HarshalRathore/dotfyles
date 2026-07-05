---
title: "AIEF2025 - Make your LLM app a Domain Expert: How to Build an Expert System — Christopher Lovejoy, Anterior"
category: references
summary: "Christopher Lovejoy (Anterior) on domain-native LLM apps. The system for incorporating domain insights matters more than model sophistication. Covers last-mile problem and failure mode ontology."
sources:
  - "[[sources/watchv=mrm7oa3jsfs]]"
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/christopher-lovejoy]]"
    type: related_to
  - target: "[[entities/anterior]]"
    type: related_to
---

# AIEF2025 - Make your LLM app a Domain Expert: How to Build an Expert System

**Speaker:** Christopher Lovejoy, Anterior
**Video:** https://www.youtube.com/watch?v=MRM7oA3JsFs

## TL;DR

Christopher Lovejoy, a medical doctor turned AI engineer, presents a playbook for building domain-native LLM applications. His core thesis: the system built for incorporating domain insights is far more important than model sophistication. He illustrates this with Anterior's experience achieving ~99% accuracy on medical necessity reviews using a "domain intelligence engine" that converts customer-specific domain insights into performance improvements.

## Problem Statement

The bottleneck in vertical AI is not model capability but the "last mile problem" — giving the model and AI system context and understanding of the specific workflow for a particular customer or industry. Frontier models reason well and get to a great baseline (~95%), but eking out the final 4-5% of performance requires deep domain context that only domain experts can provide. ^[extracted]

## Framework: Domain Intelligence Engine

Lovejoy proposes a two-part system:

1. **Measurement** — define what users care about as metrics, design a failure mode ontology to categorize all ways the AI can fail
2. **Improvement** — convert customer-specific domain insights into pipeline performance improvements through a domain expert product manager at the center

## Key Example: Conservative Therapy

A 78-year-old female patient presents with right knee pain. The doctor recommends a knee arthroscopy. Florence (Anterior's AI) must determine: is there documentation of unsuccessful conservative therapy for at least six weeks?

This seemingly simple question has hidden complexity:
- What counts as "conservative therapy" vs aggressive treatment varies by context
- What counts as "unsuccessful" — full resolution or partial improvement?
- What counts as "documentation" — implicit inference or explicit record? ^[extracted]

## Key Concepts

- **Domain Expert Product Manager** — the PM role should be a domain expert who sits at the center of the system
- **Failure Mode Ontology** — systematically categorize all ways the AI can fail (e.g., medical record extraction, clinical reasoning, rules interpretation)
- **Domain-Specific Metrics** — define metrics that matter to users (e.g., false approvals in healthcare)
- **Model Saturation** — models reach ~95% capability; beyond that, system architecture matters more than model quality ^[extracted]

## Key Quote

> "The limitation these days is not how powerful is your model and whether it can reason to the level that you need it to. It's more, can your model understand the context in that industry for that particular customer and perform the reasoning that it needs to?" ^[extracted]

## Related

- [[entities/christopher-lovejoy|Christopher Lovejoy]] — speaker
- [[entities/anterior|Anterior]] — company
- [[concepts/domain-native-llm-application|Domain-Native LLM Application]] — core concept
- [[concepts/last-mile-problem-ai|Last Mile Problem in AI]] — the problem this talk addresses
- [[concepts/domain-intelligence-engine|Domain Intelligence Engine]] — the proposed solution
- [[concepts/reliability-over-intelligence|Reliability Over Intelligence]] — related thesis
