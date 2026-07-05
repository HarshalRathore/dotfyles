---
title: "Code Review Feedback Quality"
category: concepts
tags: [code-review, feedback-quality, llm-evaluation, ai-code-review]
relationships:
  - target: "[[concepts/bug-taxonomy]]"
    type: extends
  - target: "[[concepts/high-signal-low-noise]]"
    type: related_to
  - target: "[[concepts/self-driving-code-review]]"
    type: related_to
sources:
  - "[[sources/watchv=tswqekftnaw]]"
summary: "A 2D evaluation framework for code review comments based on LLM capability and human desirability, used to constrain AI output to the intersection of what LLMs can catch and what humans want to receive."
provenance:
  extracted: 0.75
  inferred: 0.15
  ambiguous: 0.10
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Code Review Feedback Quality

Code Review Feedback Quality is a 2D evaluation framework for classifying code review comments along two axes: **LLM capability** (can the LLM catch this type of issue?) and **human desirability** (do humans want to receive this type of feedback from an LLM?). ^[extracted]

The framework was developed by [[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) at AIEF2025 as a practical tool for constraining AI code review output to comments that are both within the LLM's capacity AND that humans want to receive. ^[extracted]

## The Framework

The core insight is that LLMs mimic what they're asked to do. When prompted to generate code review comments, they produce everything within their capability AND everything outside it. The solution is to update prompts to only trigger comments that fall in the top-right quadrant of the 2D framework. ^[extracted]

## Measurement

Graphite measures whether their AI review system stays in the top-right quadrant using two signals:

1. **Upvote/downvote reactions** — Downvote spikes signal the LLM is overreaching beyond its capabilities. ^[extracted]
2. **Acceptance rate** — Diamond achieves ~52% comment acceptance rate vs ~45-50% for human comments, with a <4% downvote rate. ^[extracted]

The harder signal to measure is "humans want to receive" — Graphite addresses this through prompt engineering that constrains output to the intersection of capability and desirability. ^[extracted]

## Related

- [[concepts/bug-taxonomy|Bug Taxonomy]] — The 7-category classification derived from this framework
- [[concepts/high-signal-low-noise|High Signal, Low Noise]] — Quality principle for AI review systems
- [[concepts/self-driving-code-review|Self-Driving Code Review]] — AI review systems must use this framework
- [[concepts/tribal-knowledge|Tribal Knowledge]] — The hardest category: humans want it, LLMs can't catch it
