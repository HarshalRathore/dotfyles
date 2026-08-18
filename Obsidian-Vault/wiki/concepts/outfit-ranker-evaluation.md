---
title: Outfit Ranker Evaluation
category: concepts
tags:
- evaluation
- recommendation
- ranking
- human-feedback
- fashion
aliases:
- outfit eval
- styling evaluation
- ranker evaluation
relationships:
- target: "[[concepts/multimodal-evaluation]]"
  type: extends
- target: "[[concepts/user-feedback-evals]]"
  type: uses
sources:
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md
summary: Proposed evaluation design for an outfit ranker — blinded pairwise agreement, top-choice/top-3 success, constraint-violation rate, and actual-wear feedback with preserved disagreement.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# Outfit Ranker Evaluation

Evaluation design proposed in the AI-wardrobe design session for an outfit ranker. These are design hypotheses, not measured results. ^[ambiguous]

## Metrics

- **Blinded human pairwise agreement** — humans compare two outfits blind; the system's ranking should agree with human preference.
- **Top-choice acceptance** — does the user pick the system's #1?
- **Top-3 success** — is the right outfit in the top three?
- **Constraint-violation rate** — how often a suggestion breaks a hard constraint (wrong occasion, wrong weather, item not in closet).
- **Paraphrase consistency** — the same request phrased differently should give equivalent results.
- **Actual-wear feedback** — what the user actually wore (wear diary) as ground truth.

## Preserving Disagreement

The design explicitly calls for preserving reviewer disagreement: when humans disagree, keep the outcome as a probabilistic label rather than collapsing to a single "correct" answer. This is a deliberate extension of general eval practice — disagreement is signal, not noise to be averaged away. ^[extracted]

## Relationship to Existing Eval Concepts

The proposal extends [[concepts/multimodal-evaluation|multimodal evaluation]] (garment images are visual inputs) and leans on [[concepts/user-feedback-evals|user feedback as an eval signal]] (wear diary, top-choice picks). It is grounded in the design session's view that frontier models' fashion judgment is not automatically reliable, so human agreement metrics carry the load. ^[inferred]

## Related

- [[concepts/multimodal-evaluation|Multimodal Evaluation]] — evaluating visual-input systems
- [[concepts/user-feedback-evals|User Feedback as Evals Signal]] — organic, real-user eval signals
- [[concepts/fashion-taste-dimensions|Fashion Taste Dimensions]] — what the evaluators are judging
- [[concepts/outfit-ranking-vs-outfit-generation|Outfit Ranking vs Generation]] — the ranked-output framing these metrics assume
- [[projects/ai-wardrobe-india/synthesis/wardrobe-memory-and-taste-data-moat|Wardrobe Memory & Taste Data Moat]] — eval data as part of the moat

## Sources

- `/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md` — design-session synthesis (2026-08-15)
