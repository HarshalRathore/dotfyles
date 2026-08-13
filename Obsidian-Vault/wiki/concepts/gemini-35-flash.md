---
title: Gemini 3.5 Flash
category: concepts
tags:
  - gemini
  - google-deepmind
  - llm
  - agentic
  - inference
sources:
  - "https://x.com/i/status/2083430232405733819"
summary: "A Gemini model announced as combining frontier intelligence with action, optimized for fast agentic coding through Google's Antigravity harness."
provenance:
  extracted: 0.82
  inferred: 0.12
  ambiguous: 0.06
base_confidence: 0.58
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-08-02T01:17:21Z"
updated: "2026-08-02T01:17:21Z"
relationships:
  - target: "[[entities/gemini|Gemini]]"
    type: extends
  - target: "[[entities/google-deepmind|Google DeepMind]]"
    type: related_to
  - target: "[[entities/google-antigravity|Google Antigravity]]"
    type: uses
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: related_to
---

# Gemini 3.5 Flash

**Gemini 3.5 Flash** is introduced in the source keynote as the first in a series of models combining frontier intelligence with action. It is positioned for agentic coding, long-horizon tasks, and real-world workflows rather than only text generation. ^[extracted]

## Positioning and Speed

The keynote claims that Gemini 3.5 Flash improves over Gemini 3.1 Pro across almost all shown benchmarks and produces output roughly four times faster than other frontier models. The benchmark names and chart were not independently checked; the automatic transcript renders one benchmark name ambiguously. ^[extracted] ^[ambiguous]

## Antigravity Co-Optimization

Google presents Gemini 3.5 Flash together with [[entities/google-antigravity|Antigravity]]. The model is said to be co-optimized with the Antigravity harness, whose primitives include sub-agents, hooks, and asynchronous task management. This frames practical agent capability as a model-and-runtime property. ^[extracted]

The keynote says Google developers were processing more than 3 trillion tokens per day internally with the reworked Antigravity platform, up from about half a trillion tokens per day in March. This is an internal adoption claim from the announcement. ^[extracted]

## Availability Claim

The speaker says Gemini 3.5 Flash is brought to developers in Antigravity. The source does not provide API names, pricing, model limits, or an independently verified release page, so those details remain open. ^[ambiguous]

## Related

- [[entities/gemini|Gemini]] — model family
- [[entities/google-deepmind|Google DeepMind]] — research organization behind Gemini
- [[entities/google-antigravity|Google Antigravity]] — agent-first harness and product surface
- [[concepts/ai-harness|AI Agentic Harness]] — model-runtime control surfaces
- [[concepts/long-horizon-agency|Long-Horizon Agency]] — target capability for extended agent tasks
- [[misc/web-x-com-i-status-2083430232405733819|Source: Google I/O keynote excerpt]]
