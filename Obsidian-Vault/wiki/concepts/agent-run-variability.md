---
title: "Agent Run-to-Run Variability"
category: concepts
tags: [agent-reliability, run-variability, bug-detection, agent-evaluation, aief2025]
summary: The finding that AI agents produce different bug reports across runs even when finding bugs at the same top-line count — indicating agents do not holistically analyze files the way humans do.
sources:
  - "AIEF2025 - How to Improve your Vibe Coding — Ian Butler - https://www.youtube.com/watch?v=g03m-WFEu1U"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-reliability-challenge]]"
    type: extends
  - target: "[[concepts/thinking-models-for-bug-detection]]"
    type: relates_to
---

# Agent Run-to-Run Variability

Even when using thinking models, AI agents exhibit significant run-to-run variability in bug detection. The top line number of bugs found remains stable across runs, but the specific bugs identified change each time. ^[extracted]

## What This Means

Agents are not holistically analyzing files the way a human developer would. Instead, they sample code paths probabilistically — finding some bugs in one run and different bugs in the next. ^[extracted]

## The Consumer Problem

Consumers shouldn't have to run their agents 100 times to get a complete bug breakdown — but that's the current reality. This is identified as a very big limitation of current agents. ^[extracted]

## Relationship to Other Concepts

Agent run-to-run variability is a specific manifestation of the broader [[concepts/agent-reliability-challenge|agent reliability challenge]]. It also constrains the effectiveness of [[concepts/thinking-models-for-bug-detection|thinking models]] — even the best models exhibit this variability. ^[inferred]
