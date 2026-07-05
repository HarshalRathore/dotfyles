---
title: "Reliability Over Intelligence"
category: concepts
tags: [ai-reliability, production-ai, agent-reliability, inference-cost, practical-ai, domain-native, healthcare-ai]
summary: "The thesis that AI companies should prioritize reliability for boring tasks over marginal intelligence gains, because 99.9% reliable models for common tasks unlock billion-dollar applications."
sources:
  - "[[sources/watchv=l8-5ezsoi5a]]"
  - "[[sources/watchv=mc55hdwlq4o]]"
  - "[[sources/watchv=mrm7oa3jsfs]]"
provenance:
  extracted: 0.7
  inferred: 0.3
  ambiguous: 0.0
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/scaling-is-dead-thesis]]"
    type: extends
  - target: "[[concepts/agent-reliability-challenge]]"
    type: extends
  - target: "[[concepts/simple-is-better-ai]]"
    type: related_to
  - target: "[[concepts/evals-are-not-unit-tests]]"
    type: related_to
  - target: "[[concepts/demo-savvy-problem]]"
    type: related_to
  - target: "[[concepts/domain-native-llm-application]]"
    type: extends
  - target: "[[concepts/last-mile-problem-ai]]"
    type: related_to
---

# Reliability Over Intelligence

The thesis that the bottleneck in AI production is not model intelligence but model reliability — and that achieving 99.9% reliability for boring, common tasks unlocks more economic value than marginal IQ improvements on hard tasks.

## Core Argument

Federalist AI articulated this position at AIEF2025:

> "The models are really smart enough. But what we actually really want is the models reliable enough to book airline tickets, sort out emails, or file our taxes and invoices." ^[extracted]

Key points:

- Frontier models can already do PhD-level math ^[extracted]
- But a 45% success rate is unacceptable for consumer applications (DoorDash analogy) ^[extracted]
- When AI agents work, they're awesome; when they don't, "we are stuck cleaning up the mess" ^[extracted]
- "Reliability is revenue" — every reliable use case unlocks a billion-dollar app ^[extracted]
- The money is in boring tasks done perfectly, not rocket science ^[extracted]

## Relationship to Evals Thesis

[[entities/ido-pesok|Ido Pesok]] (Vercel) reinforced this thesis at AIEF2025 with the "Fruit Letter Counter" story: a model that works perfectly in demo (tested twice, worked both times) can fail in production with a single user query. ^[extracted] The core insight: 95% of an AI app's code works 100% of the time, but the crucial 5% (the LLM) can fail unpredictably. ^[extracted] This is the same reliability problem — just framed from the application layer rather than the model layer. ^[inferred]

## Relationship to Scaling Thesis

This thesis directly extends the "scaling is dead" argument: rather than burning billions on bigger models for marginal capability gains, investment should target reliability engineering and architectural innovation (e.g., non-transformer models with 1000x lower inference cost) ^[inferred].

## Relationship to Domain-Native Thesis

[[entities/christopher-lovejoy|Christopher Lovejoy]] (Anterior) reinforced this thesis from a different angle at AIEF2025: models reach ~95% capability, but eking out the final 4-5% requires domain-specific context that only domain experts can provide. ^[extracted] The bottleneck is not model intelligence but the "last mile" of domain context — what [[concepts/last-mile-problem-ai|Last Mile Problem in AI]] addresses. ^[inferred]

Anterior achieved ~99% accuracy on medical necessity reviews not by using a better model, but by building a [[concepts/domain-intelligence-engine|Domain Intelligence Engine]] that encodes domain-specific reasoning about what counts as "conservative therapy," "unsuccessful treatment," and "adequate documentation." ^[extracted]

## Business Implications

- **E-commerce**: Reliable AI agents for booking, sorting, and filing ^[extracted]
- **B2B sales**: Reliable automation of routine business processes ^[extracted]
- **Healthcare**: Medical necessity reviews with ~99% accuracy through domain encoding ^[extracted]
- **Cost structure**: 1000x lower inference cost (CoreKey 72B) makes reliable AI economically viable at scale ^[extracted]
- **Speculative decoding**: The same techniques apply to existing transformer models, not just new architectures ^[extracted]

## Counterpoint

The intelligence-focused camp would argue that reliability improvements eventually plateau, and that pushing the capability frontier (through scaling or new architectures) is the only path to AGI and its associated economic value ^[inferred].

## Related

- [[concepts/scaling-is-dead-thesis|Scaling is Dead Thesis]] — architectural innovation over scaling
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — the problem this thesis addresses
- [[concepts/simple-is-better-ai|Simple is Better AI]] — related principle
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — application-layer view of the same reliability problem
- [[entities/federalist-ai|Federalist AI]] — company built on this thesis
- [[references/aief2025-the-next-unicorns-7-top-ai-startups-hf0-residency|AIEF2025 The Next Unicorns]] — Federalist AI presentation
- [[concepts/domain-native-llm-application|Domain-Native LLM Application]] — the domain context extension of this thesis
- [[concepts/last-mile-problem-ai|Last Mile Problem in AI]] — the specific bottleneck this thesis identifies
- [[entities/christopher-lovejoy|Christopher Lovejoy]] — domain-native thesis proponent
- [[entities/anterior|Anterior]] — company achieving ~99% through domain encoding
