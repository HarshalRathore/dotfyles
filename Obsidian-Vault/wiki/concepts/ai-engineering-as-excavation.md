---
title: "AI Engineering as Excavation"
category: concepts
tags: [ai, llm, methodology, engineering, epistemology]
relationships:
  - target: "[[concepts/demo-driven-ai-exploration]]"
    type: related_to
  - target: "[[concepts/latent-model-capabilities]]"
    type: extends
sources:
  - "[[sources/watchv=0f8mngpuycy]]"
summary: "A paradigm contrasting traditional goal-oriented engineering with AI engineering as a process of discovering hidden, unknown capabilities in models."
provenance:
  extracted: 0.55
  inferred: 0.40
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# AI Engineering as Excavation

A paradigm articulated by [[entities/sharif-shameem|Sharif Shameem]] that contrasts traditional engineering with AI engineering. Traditional engineering is teleological — goal-oriented, purpose-driven, with known outcomes. AI engineering is fundamentally different: it is the process of discovering what hidden capabilities exist within AI models, more akin to archaeology or mining than construction.

## The Hamming Principle

Richard Hamming's observation — "If you know what you're doing, you should not be doing it" — captures the essence of AI engineering. In traditional engineering, following established methods with predictable outcomes is the norm. In AI engineering, certainty about outcomes is a sign you may not be exploring deeply enough. ^[inferred]

## Key Distinctions

| Traditional Engineering | AI Engineering as Excavation |
|---|---|
| Goal-oriented, teleological | Discovery-oriented, exploratory |
| Known methods, predictable outcomes | Unknown capabilities, emergent behaviors |
| Builds from known components | Uncovers latent capabilities |
| Success = meeting specs | Success = finding something surprising |
| "If you know what you're doing, do it" | "If you know what you're doing, you're doing it wrong" ^[inferred] |

## Why Excavation?

The metaphor is apt because even the creators of AI models — researchers at [[entities/openai|OpenAI]] and [[entities/anthropic|Anthropic]] — do not have full understanding of their models' capabilities. Shameem recounts OpenAI researchers being surprised that GPT-3 could browse the web or generate React components. The capabilities are latent in the weights, waiting to be discovered through interaction. ^[extracted]

## Toolkit

The primary tool for excavation is the demo. Curiosity serves as the flashlight guiding where to dig. The model's behavior under different conditions reveals its hidden structure, much as a test trench reveals archaeological strata. ^[inferred]

## The "Study Barnacles" Corollary

As Charles Darwin spent eight years studying barnacles before publishing evolution, AI engineering often looks like pointless play in the moment. The difference between work and exploration is not always visible until much later. ^[inferred]

## Related

- [[concepts/demo-driven-ai-exploration|Demo-Driven AI Exploration]] — The methodology that operationalizes this paradigm
- [[concepts/latent-model-capabilities|Latent Model Capabilities]] — What the excavation process aims to uncover
- [[concepts/vibe-coding-origins|Vibe Coding Origins]] — Early example of the paradigm in practice
- [[entities/sharif-shameem|Sharif Shameem]] — Articulator of this paradigm
- [[concepts/agentic-architecture|Agentic Architecture]] — Structural framework for building with AI

## Sources

- [[references/on-curiosity-sharif-shameem-ai-eng-2025|On Curiosity — Sharif Shameem, Lexica (AI Engineer World's Fair 2025)]]
