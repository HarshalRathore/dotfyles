---
title: Probabilistic Software
category: concepts
tags:
- ai
- software-engineering
- non-determinism
- ai-agents
- production-ai
aliases:
- probabilistic systems
- non-deterministic software
sources:
- 'AIEF2025 - Turning Fails into Features: Zapier''s Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o'
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/data-flywheel|Data Flywheel]]'
  type: necessitates
- target: '[[concepts/evals-testing-pyramid|Evals Testing Pyramid]]'
  type: requires
- target: '[[concepts/emergent-behavior-in-ai|Emergent Behavior in AI]]'
  type: relates-to
summary: Probabilistic Software
---

# Probabilistic Software

Probabilistic software refers to AI-powered systems whose behavior is non-deterministic — the same inputs can produce different outputs. Building probabilistic software is fundamentally different from building traditional software, and this difference requires new development practices, evaluation strategies, and operational models. ^[extracted]

## The Two Sources of Non-Determinism

Probabilistic software introduces two compounding layers of unpredictability:

1. **AI non-determinism** — The underlying AI models are probabilistic by nature. Given the same prompt and context, the model may produce different outputs across calls.
2. **User non-determinism** — Users interact with AI products in ways developers cannot anticipate. Even if the AI were deterministic, users would still introduce variability through unpredictable inputs and usage patterns. ^[extracted]

This double-bind means that the "surprising amount of detail" in production cannot be fully designed away. The initial prototype is only a starting point; the real work of building a reliable AI product happens after shipping to users. ^[extracted]

## Implications for Development

Building probabilistic software requires a shift from the traditional software development mindset:

- **Prototypes are not products** — A working prototype does not mean the product is ready. The responsibility switches to building the data flywheel once users start interacting with the product. ^[extracted]
- **Evals are not optional** — Structured evaluation becomes the core engineering practice, not an afterthought
- **Observability is essential** — Deep instrumentation is required to understand what the system is actually doing
- **Continuous improvement is mandatory** — The system must improve over time through feedback loops, not just at release time ^[inferred]

## Implications for Platform Building

Building a platform that enables non-technical users to create AI agents is "even harder" than building agents themselves, because the platform must accommodate the full range of unpredictable user behaviors on top of the inherent non-determinism of the AI. ^[extracted]

## Related

- [[concepts/data-flywheel|Data Flywheel]] — The operational response to non-determinism
- [[concepts/evals-testing-pyramid|Evals Testing Pyramid]] — Evaluation strategy for probabilistic systems
- [[concepts/emergent-behavior-in-ai|Emergent Behavior in AI]] — Related concept about unpredictability
- [[entities/zapier|Zapier]] — Case study provider

## Sources

- AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o
