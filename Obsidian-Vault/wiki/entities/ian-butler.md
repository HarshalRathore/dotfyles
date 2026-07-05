---
title: "Ian Butler"
category: entities
tags: [ceo, bismuth, agent-evaluation, bug-detection, aief2025]
summary: CEO of Bismuth, end-to-end agent debugging solution. Published benchmark of AI agent bug-finding capabilities at AIEF2025.
sources:
  - "AIEF2025 - How to Improve your Vibe Coding — Ian Butler - https://www.youtube.com/watch?v=g03m-WFEu1U"
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/bismuth]]"
    type: leads
---

# Ian Butler

CEO of [[entities/bismuth|Bismuth]], an end-to-end agent debugging solution similar to Codex. ^[extracted]

At AIEF2025, Butler presented results from several months of benchmarking AI agents on their ability to find and fix bugs in codebases. The benchmark — SM100 — evaluated agents across 100+ repositories and 900+ bug reports, revealing that most popular agents have unacceptably low true positive rates for bug detection. ^[extracted]

His key findings: agents like Cursor and Devon have less than 10% true positive rates for finding bugs, generate significant false positives (Cursor had a 97% false positive rate across 1,200+ issues in 100+ repos), and struggle with cross-repo navigation. Thinking models significantly outperform non-thinking models at bug detection. ^[extracted]
