---
title: Model and Prompt Update Velocity
category: concepts
tags:
- model-updates
- prompt-updates
- iteration-velocity
- ai-infrastructure
summary: 'The high velocity at which AI engineering teams update their models and prompts: 50%+ update models monthly, 17% weekly, 70% update prompts monthly, 10% daily — driven by constant model releases an...'
sources:
- AIEF2025 - The 2025 AI Engineering Report — Barr Yaron, Amplify - https://www.youtube.com/watch?v=mQ7_Zje7WKE
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/prompt-management-gap|Prompt Management Gap]]'
  type: extends
- target: '[[concepts/rapid-iteration-loop|Rapid Iteration Loop]]'
  type: related_to
---

# Model and Prompt Update Velocity

AI engineering teams update their models and prompts at a **much higher velocity than traditional software teams update dependencies**. This rapid iteration cycle is driven by the constant release of new models with better benchmarks and breaking changes.

## Update Frequencies

**Model updates:**
- **50%+** update models at least monthly
- **17%** update models weekly

**Prompt updates:**
- **70%** update prompts at least monthly
- **10%** update prompts daily

## Drivers

- **Constant model releases**: "Just as you finished integrating one, another one drops with better benchmarks and a breaking change"
- **Benchmark improvements**: New models regularly set new SOTA benchmarks
- **Prompt degradation**: When a new model or blog post drops, existing prompts may no longer work well

## The Scramble Problem (Khattab, AIEF 2025)

[[entities/omar-khattab|Omar Khattab]] frames this as the "scramble problem" unique to AI engineering: ^[extracted]

- New LLMs drop weekly with different trade-offs (cost, speed, quality)
- Model APIs change under the hood even with the same name
- Prompting guides get longer for "closer to AGI" models
- If you're doing a good job, you're scrambling every week — not because you're failing, but because you're staying on top of it
- Model providers may not even have good prompting guides, forcing teams to figure things out themselves

This is fundamentally different from traditional software engineering, where hardware changes every 2-3 years at most. ^[extracted]

## Implications

The high update velocity creates:
- Need for systematic prompt management (see [[concepts/prompt-management-gap]])
- Importance of model-agnostic architecture
- Value of automated evaluation to catch regression when updating
- Pressure on engineering teams to maintain constant awareness of the model landscape

## Sources

- AIEF2025 - The 2025 AI Engineering Report — Barr Yaron, Amplify - https://www.youtube.com/watch?v=mQ7_Zje7WKE
- AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson — Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI
