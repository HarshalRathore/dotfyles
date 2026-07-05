---
title: "A year of Gemini progress + what comes next"
category: references
tags:
  - aief2025
  - gemini
  - google-deepmind
  - model-roadmap
  - multimodal
  - agentic
  - voice-ai
  - logan-kilpatrick
summary: "Logan Kilpatrick's AIEF2025 talk recapping a year of Gemini progress, announcing Gemini 2.5 Pro, and previewing the future across models, the Gemini app, and the developer platform."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/logan-kilpatrick|Logan Kilpatrick]]"
    type: related_to
  - target: "[[entities/gemini|Gemini]]"
    type: related_to
  - target: "[[entities/google-deepmind|Google DeepMind]]"
    type: related_to
  - target: "[[concepts/multimodal-models|Multimodal Models]]"
    type: related_to
  - target: "[[concepts/proactive-agents|Proactive Agents]]"
    type: related_to
---

# A year of Gemini progress + what comes next

**Speaker:** Logan Kilpatrick
**Event:** AI Engineer World's Fair 2025 (AIEF2025) — AI Education Summit
**Video:** https://www.youtube.com/watch?v=wE1ZCmCLP5g

## Summary

Logan Kilpatrick, developer relations at Google DeepMind, delivered a three-part talk at AIEF2025: announcing Gemini 2.5 Pro, recapping a year of Gemini progress, and previewing what's coming across the model family, the Gemini app, and the developer platform. He framed 2.5 Pro as "the turning point" for Gemini and described the organizational restructuring that brought product teams into DeepMind.

## Key Points

### Gemini 2.5 Pro — "The Turning Point"

- Announced as "hopefully the final update" to the 2.5 Pro model line
- Comprehensive performance improvements across benchmarks (Soda on Aider, Soda on HLE, and others)
- Closes gaps identified by developer feedback on previous versions
- Logan characterized 2.5 Pro as "the turning point" for Gemini — both internally at Google and in developer perception
- Available at ai.dev, in the Gemini app, and via Google Cloud
- Logan invited direct developer feedback via email

### A Year of Gemini Progress

**Research convergence:** DeepMind's breadth of research across science (AlphaFold, AlphaProof, AlphaGeometry), robotics, and custom models all upstream into the mainline Gemini models. Custom models built for specific domains improve the performance of mainline models in those domains. ^[extracted]

**50x inference growth:** Google processed 50x more AI inference through its servers year-over-year — from one year ago to last month. This reflects both internal demand and external developer ecosystem adoption. ^[extracted]

**Organizational evolution:** Logan described a two-step restructuring:
1. Late 2023 / early 2023: Google merged its disparate AI research teams and charted a new direction for DeepMind — not just theoretical foundational research, but building and delivering models to Google and the external world
2. Earlier this year: Product teams were brought into DeepMind, so DeepMind now creates models, does research, builds products, and delivers them to the world

The formula, Logan summarized: "bring the best people together, find info advantages, and ship." ^[extracted]

### What's Coming — Model Side

- **Omnimodal model:** Gemini was originally built as a single multimodal model for text, image, video. Native audio capabilities (TTS, conversational audio) were announced at I/O. The goal is an "omnimodal" model that handles all modalities natively.
- **VO (Video Out):** Described as "soda across a bunch of stuff" and "burning all the TPUs down" — massive demand and interest. Available in the Gemini app.
- **Video into mainline:** Video generation may enter the mainline Gemini model. Early experiments with diffusion showed "crazy levels of tokens per second" — a research exploration area, not mainline yet.
- **More small models and big models:** Both coming soon.

### What's Coming — Gemini App

- **Universal system:** The Gemini app is positioning itself as "this universal system" — the thread that unifies all of Google's products, replacing the Google account as the central identity layer.
- **Proactivity:** Logan called this "the one trend I'm most excited about." Most AI products today are reactive (user must initiate everything). Proactive AI systems will take the next step — anticipating user needs and acting before being asked.
- **Speed:** The Gemini app team, led by Josh, moves "super fast." Logan joked that complaints should be directed to Josh, not him, on Twitter.

### What's Coming — Agentic by Default

Logan described a fundamental shift in how models work:

- Historically, models were viewed as token-in/token-out systems with ecosystem scaffolding built around them
- Models are now becoming more systematic themselves — doing more of the scaffolding work internally
- The reasoning step is where this is happening: models are increasingly handling planning, tool selection, and execution as part of their native capability
- This raises questions about what scaffolding remains necessary in the ecosystem as models absorb more of the agent-like behavior

## Key Quotes

- "It feels like 10 years of Gemini stuff packed into the last 12 months." ^[extracted]
- "The formula is simple: bring the best people together, find info advantages, and ship." ^[extracted]
- "We're actually very early in that journey." ^[extracted]
- "VO is burning all the TPUs down." ^[extracted]
- "I do think it'll be interesting to see how much of the scaffolding work that's happened in the past ends up just being a part of that reasoning step." ^[extracted]

## Sources

- AIEF2025 - A year of Gemini progress + what comes next — Logan Kilpatrick, Google DeepMind - https://www.youtube.com/watch?v=wE1ZCmCLP5g
