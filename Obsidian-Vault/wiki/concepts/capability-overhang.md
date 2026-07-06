---
title: Capability Overhang
category: concepts
tags:
- concept
- llm
- agent-design
- anthropic
sources:
- 'https://www.youtube.com/watch?v=4sX_He5c4sI'
summary: The phenomenon where models have latent abilities that aren't visible in raw interaction but emerge when given the right tools or scaffolding — Claude can solve the Pokemon suffix question with code execution but not in raw chat.
provenance:
  extracted: 0.75
  inferred: 0.25
  ambiguous: 0.0
base_confidence: 0.59
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T12:00:00Z
updated: 2026-07-06T12:00:00Z
relationships:
  - target: '[[entities/anthropic]]'
    type: related_to
  - target: '[[concepts/latent-model-capabilities]]'
    type: related_to
  - target: '[[concepts/mythos-models]]'
    type: related_to
---

# Capability Overhang

**Capability overhang** is the phenomenon where a model possesses latent abilities that aren't visible in raw interaction (e.g., text chat) but emerge when given the right tools, scaffolding, or environment. The capability exists in the model but is "hobbled" by the interface — once you give it the right arm, the capability manifests.

## Origin

The term was popularized by [[entities/tariq-shihapar|Tariq Shihapar]] (Anthropic MTS) in his WF2026 talk "Unhobbling Claude," where he used it to describe the challenge of working with the Fable/Mythos-class models: figuring out what capabilities are now possible that weren't visible before. ^[extracted]

## The Pokemon Example

The canonical example: Claude cannot answer "which Pokemon end in AW?" in raw chat (two exist: Croconaw and Dreadnought). But with the code execution tool, it fetches every Pokemon and writes a script to filter for the suffix — and finds the answer. The capability was always in the model; it needed the right tool to unlock it. ^[extracted]

## Relationship to Spiky Progress

Capability overhang is evidence of **spiky model progress** — models don't get better at everything uniformly. New capabilities emerge in specific areas when the right tools are provided:

- **Context window expansion** didn't solve coding; giving models **arms** (bash tool, environment interaction) did, leading to Claude Code. ^[extracted]
- **Proactive capability** — Claude Code gained the ability to "wake itself up" and do work without being prompted (Cloud Tag). ^[extracted]
- **Question-asking** — Progressed from barely callable on Opus 4, to interviewing on Opus 4.5, to generating full HTML reports on Opus 4.8/Fable. ^[extracted]

## Implications

### For Prompting

- The harness you put models in is a function of your understanding of the model
- Models are "grown, not designed" — capabilities emerge organically
- You can't predict capability overhang from the model spec alone; you discover it through interaction
- **Unhobbling** — the process of discovering and unlocking a model's latent capabilities

### For Evaluation

- Raw chat benchmarks may significantly underestimate model capabilities
- Tool-augmented performance is the more relevant metric for production use
- Evaluation frameworks need to test capability emergence, not just baseline performance

### For Agent Design

- Agent frameworks should prioritize giving models the right "arms" (tools, environment access) over expanding context windows
- The key design question shifts from "what should the model know?" to "what tools should the model have?"

## Related Concepts

- **Latent model capabilities** — Broader term for abilities that exist but aren't immediately visible
- **Mythos models** — Fable and the Mythos class, where capability overhang is most pronounced
- **Unhobbling** — The process of discovering and unlocking latent capabilities
- **Agent loop** — The framework within which capability overhang is exercised

## Open Questions

- How do we systematically discover capability overhang in new models?
- Is there a theoretical limit to capability overhang, or does it grow indefinitely?
- How does capability overhang differ between model families (Claude vs. Gemini vs. GPT)?
- Can capability overhang be measured quantitatively, or is it inherently qualitative?

## Sources

- [[references/aief2025-fable-model-field-guide-tariq-shihapar]] — Tariq Shihapar's WF2026 talk
- [[misc/wf2026]] — Conference overview
