---
title: "Evaluator Thresholds"
category: concepts
tags:
  - evaluation
  - thresholds
  - scoring
  - risk-calibration
  - domain-specific-evals
aliases: [eval thresholds, score thresholds, risk thresholds, evaluator calibration]
relationships:
  - target: "[[concepts/azure-ai-evaluation-sdk]]"
    type: implements
  - target: "[[concepts/llm-judge-best-practices]]"
    type: related_to
sources:
  - "[[sources/watchv=j4vpq2i0qze]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.72
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Evaluator Thresholds

Evaluator thresholds are configurable cutoff values on evaluation scores that determine whether an agent's output passes or fails a given criterion. ^[extracted] They enable domain-specific risk calibration — the same evaluation score can have different meanings depending on the application's context and risk tolerance. ^[extracted]

## Core Principle

Evaluation scores (typically 1–5) are not inherently good or bad — their meaning depends on the application domain. ^[extracted] A violence score of 4 might be acceptable for a mature-rated video game but unacceptable for a children's application. ^[extracted]

## Configuration Model

Thresholds are configured per-evaluator per-application. The [[concepts/azure-ai-evaluation-sdk|Azure AI Evaluation SDK]] exposes this configuration through Python notebooks where each evaluator's threshold can be set independently. ^[extracted]

## Relationship to Risk Categories

Thresholds are particularly important for [[concepts/risk-evaluation|risk and safety evaluators]] where binary pass/fail is insufficient. Graded scores with configurable thresholds allow:

- **Granular risk reporting** — See how close an output is to the failure boundary
- **Domain adaptation** — Different thresholds for different product lines
- **Progressive improvement tracking** — Monitor whether scores are moving toward or away from the threshold over time ^[inferred]

## Related

- [[concepts/azure-ai-evaluation-sdk]] — Platform with configurable threshold support
- [[concepts/llm-judge-best-practices]] — General principles for reliable evaluation scoring
- [[concepts/multimodal-evaluation]] — Multimodal evaluators also use threshold configuration

## Sources

- Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft. https://www.youtube.com/watch?v=J4vPq2i0QzE
