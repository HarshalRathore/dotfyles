---
title: Model Spot-Checking
category: concepts
tags:
- evaluation
- model-comparison
- spot-checking
- manual-evals
- baseline-quality
aliases:
- model spot check
- model comparison
- manual model eval
- cherry-pick eval
relationships:
- target: '[[concepts/manual-vs-automated-evals]]'
  type: implements
- target: '[[concepts/azure-ai-evaluation-sdk]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=j4vpq2i0qze'
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Model Spot-Checking
---

# Model Spot-Checking

Model spot-checking is the practice of manually evaluating individual model responses to specific prompts before scaling to automated evaluation. ^[extracted] It serves as the foundation for understanding model quality and identifying issues that aggregate metrics can miss. ^[extracted]

## Core Principle

"Before evaluating at scale you need first to cherry pick and look at specific examples." ^[extracted] Automatic metrics produce aggregate scores (e.g., "85% average") that can mask poor performance on critical individual cases. Manual spot-checking provides the contextual understanding needed to interpret automated scores correctly. ^[extracted]

## Process

1. Select representative prompts covering the agent's expected input space
2. Run each prompt through candidate models
3. Manually assess output quality (accuracy, fluency, relevance)
4. Compare models side-by-side on the same prompts
5. Select the model that best fits the use case ^[extracted]

## Tooling

[[concepts/ai-toolkit-vscode|AI Toolkit VS Code extension]] provides side-by-side model comparison, allowing developers to evaluate multiple models (e.g., GPT-4.1 vs GPT-4.0) on identical prompts within the same interface. ^[extracted]

## When to Re-Spot-Check

Spot-checking should be repeated when:
- A new model version is released
- The agent's system prompt changes
- The evaluation dataset is updated
- Automated eval scores show unexpected patterns ^[inferred]

## Relationship to Automated Evaluation

Spot-checking is Phase 1 of the [[concepts/manual-vs-automated-evals|evaluation progression]]. It informs the configuration of automated evaluators by revealing which dimensions of quality matter most for the specific use case. ^[inferred]

## Related

- [[concepts/manual-vs-automated-evals]] — The full evaluation progression
- [[concepts/ai-toolkit-vscode]] — Tooling for manual comparison
- [[concepts/azure-ai-evaluation-sdk]] — Automated evaluation at scale

## Sources

- Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft. https://www.youtube.com/watch?v=J4vPq2i0QzE
