---
title: Google DeepMind
tags:
- entity
- organization
- ai
- research
- google
aliases:
- DeepMind
- Google Brain
- Gemini team
relationships:
- target: '[[entities/gemini]]'
  type: related_to
- target: '[[entities/jack-rae]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=8eqo4j2bwkw'
- 'https://www.youtube.com/watch?v=u-fmsby-khy_test'
summary: AI research lab formed from the merger of Google Brain and DeepMind, responsible for the Gemini model family including Gemini 2.5 Pro, thinking/reasoning capabilities, and 50x year-over-year infere...
provenance:
  extracted: 0.6
  inferred: 0.3
  ambiguous: 0.1
base_confidence: 0.35
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-05
category: entities
---

# Google DeepMind

Google DeepMind is the AI research lab formed from the merger of Google's AI research divisions, including the original [[entities/deepmind|DeepMind]] (acquired by [[entities/google|Google]] in 2014) and Google Brain. The lab is responsible for the [[entities/gemini|Gemini]] model family.

## Thinking in Gemini

The thinking and reasoning capabilities within Gemini are led by [[entities/jack-rae|Jack Rae]], who serves as technical lead of thinking. The team has advanced test-time compute scaling, thinking budgets, and Deep Think — high-budget reasoning modes for complex problem solving. ^[extracted]

Key findings from Google DeepMind's thinking research:

- RL-based training for thinking produces emergent reasoning behaviors (self-correction, hypothesis testing, problem decomposition)
- Test-time compute scaling shows log-linear relationship with reasoning performance on math, code, and science benchmarks
- Thinking budgets stack multiplicatively with pre-training and post-training scaling

## Team at AI Engineer World's Fair 2025

[[entities/logan-kilpatrick|Logan Kilpatrick]] gave an overview of the Gemini ecosystem at AIEF2025 Day 2, announcing Gemini 2.5 Pro and citing a 50x year-over-year increase in AI inference processed through Google servers. [[entities/jack-rae|Jack Rae]] delivered a deep dive into the thinking and reasoning research within Gemini. Logan characterized 2.5 Pro as "the turning point" for Gemini, both internally and in developer perception. ^[extracted]

## Organizational Evolution

Logan Kilpatrick described a two-step restructuring at Google:

1. **Late 2023 / early 2023:** Google merged its disparate AI research teams and charted a new direction for DeepMind — not just theoretical foundational research, but building and delivering models to Google and the external world
2. **Earlier this year (2025):** Product teams were brought into DeepMind, so DeepMind now creates models, does research, builds products, and delivers them to the world

This organizational change unified research and product development, enabling faster iteration. Logan described the collaboration between research and product teams as "super fun" and noted they "ship lots of stuff." ^[extracted]

## Research Convergence

DeepMind's breadth of research across science (AlphaFold, AlphaProof, AlphaGeometry), robotics, and custom models all upstream into the mainline Gemini models. Custom models built for specific domains improve the performance of mainline models in those domains. ^[extracted]

## 50x Inference Growth

Google processed 50x more AI inference through its servers year-over-year — from one year ago to the month of the talk. This reflects both internal demand and external developer ecosystem adoption. ^[extracted]

## Model Roadmap

Logan previewed upcoming work across three areas:

1. **Model side:** Further model improvements, more small models and big models coming, video generation may enter the mainline model, and the pursuit of an "omnimodal" model
2. **Gemini app:** Positioning as the "universal system" that unifies all of Google's products, with proactivity as a key trend
3. **Agentic by default:** Models becoming more systematic, absorbing scaffolding work that previously lived in external frameworks

## Related

- [[entities/logan-kilpatrick|Logan Kilpatrick]] — developer relations, announced Gemini 2.5 Pro at AIEF2025
- [[entities/gemini|Gemini]] — The model family advanced by Google DeepMind
- [[entities/jack-rae|Jack Rae]] — Tech lead of thinking within Gemini
- [[concepts/test-time-compute-scaling|Test-Time Compute Scaling]] — Core reasoning paradigm developed at Google DeepMind
- [[concepts/thinking-budgets|Thinking Budets]] — Continuous thinking budget mechanism

## Sources

- [[references/thinking-deeper-in-gemini-jack-rae-deepmind|Thinking Deeper in Gemini — Jack Rae, Google DeepMind]] — AI Engineer World's Fair 2025 talk
- AIEF2025 - AI Engineer World's Fair 2025 - Day 2 Keynotes & SWE Agents track (TEST - first 3 speakers) - https://www.youtube.com/watch?v=U-fMsbY-kHY_test
- AIEF2025 - A year of Gemini progress + what comes next — Logan Kilpatrick, Google DeepMind - https://www.youtube.com/watch?v=wE1ZCmCLP5g
