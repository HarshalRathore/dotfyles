---
title: "User Feedback as Evals Signal"
category: concepts
tags:
  - evals
  - user-feedback
  - signals
  - production-ai
  - aief2025
aliases:
  - user feedback evals
  - organic evals
  - user-derived signals
summary: "User feedback as a high-quality eval signal — ~30% of production AI teams have implemented it. Organic, real-user data that provides ground-truth quality assessment without manual grading."
sources:
  - "AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ"
  - "/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md"
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-08-15
relationships:
  - target: "[[concepts/evals-spectrum|The Evals Spectrum]]"
    type: component-of
  - target: "[[concepts/golden-datasets|Golden Datasets]]"
    type: relates_to
  - target: "[[concepts/observability-for-enterprise-trust|Observability for Enterprise Trust]]"
    type: extends
---

# User Feedback as Evals Signal

**User feedback** is a high-quality eval signal derived from real user interactions with an AI application. Approximately 30% of production AI teams have implemented user feedback mechanisms. ^[extracted]

## Why User Feedback Is Valuable

- **Real users** — Actual people with real needs, not synthetic test cases
- **High quality** — Direct signal about whether the system works for its intended purpose
- **Organic** — Collected without additional grading cost
- **Continuous** — Always flowing, not limited to a golden dataset size

Dat Ngo describes user feedback as "an incredible signal" that many teams overlook. ^[extracted]

## Implementation Patterns

Common user feedback mechanisms:

- **Thumbs up / thumbs down** — Simple binary feedback on outputs
- **Detailed ratings** — Multi-dimensional scoring (helpfulness, accuracy, tone)
- **Report problems** — User-initiated flagging of bad outputs
- **Implicit signals** — Click-through rates, time spent, follow-up queries

## Role in the Evals Ecosystem

User feedback sits between golden datasets (high quality, low scale, expensive) and code-based heuristics (low quality, high scale, cheap) on the [[concepts/evals-spectrum|evals spectrum]]. It provides human-quality signal at near-zero marginal cost, but with lower control than golden datasets. ^[inferred]

## Limitations

- **Selection bias** — Only users who bother to give feedback do so
- **Noise** — Not all feedback is equally reliable
- **Coverage** — Doesn't cover every interaction, unlike code-based evals

## Wear-Diary and Actual-Wear Feedback (2026-08)

The AI-wardrobe design session (2026-08-15) adds two user-feedback patterns to the palette:

- **Actual-wear feedback** — what the user actually wore (logged via a wear diary) as ground truth for outfit recommendations; a continuous, organic signal in the same spirit as thumbs up/down but tied to real-world behavior rather than in-app ratings. ^[extracted]
- **Preserve reviewer disagreement** — when human reviewers disagree on outfit quality, keep the outcome as a probabilistic label instead of collapsing to a single "correct" answer; disagreement is treated as signal, not noise. ^[extracted]

See [[concepts/outfit-ranker-evaluation|Outfit Ranker Evaluation]] for the wardrobe metrics and [[concepts/closet-first-wardrobe-memory|Closet-First Wardrobe Memory]] for the wear-diary layer that produces the signal.

## Sources

- AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md — design-session synthesis (2026-08-15)
