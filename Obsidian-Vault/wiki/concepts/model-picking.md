---
title: "Model Picking"
category: concepts
tags:
  - model-selection
  - llm
  - vendor-management
  - enterprise-ai
aliases:
  - Model Selection
  - Model Picking
  - Choosing LLMs
sources:
  - "AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak"
summary: "The ongoing challenge of selecting and switching between LLM providers and models. Even within the same vendor, model upgrades require significant effort and are only feasible with strong evaluation infrastructure in place."
provenance:
  extracted: 0.75
  inferred: 0.18
  ambiguous: 0.07
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vendor-lock-in-llm|Vendor Lock-in in LLM]]"
    type: relates_to
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: depends_on
---

# Model Picking

**Model picking** is the ongoing challenge of selecting, evaluating, and switching between LLM providers and models in production applications. ^[extracted]

## The Reality

Models change frequently — Intuit notes that models change "every year, every month." ^[extracted] This creates a continuous pressure to re-evaluate model choices.

## Intuit's Model Strategy

Intuit uses a multi-model approach: ^[extracted]

- **Claude** (Anthropic) — Primary model for static tax queries, supported by a multi-million dollar contract
- **OpenAI** (GPT-4 mini) — Used for other Q&A use cases and dynamic queries
- **Fine-tuned GPT-3.5 High Q** (AWS Bedrock) — Piloted for static queries, good quality but too specialized

## Model Switching Challenges

Switching models — even within the same vendor — is harder than expected:

- Prompts are model-specific and require rework
- Quality characteristics differ between models
- Evaluation infrastructure is the key enabler for safe switching

Intuit's transition from Claude Instant to Claude Haiku for tax year 24 required significant effort and was only possible because they had clear evaluation systems in place. ^[extracted]

## Key Insight

Strong evaluation systems don't just measure quality — they **enable model agility**. Without evals, you're stuck with whatever model you started with. With evals, you can safely test and switch models as the landscape evolves. ^[inferred]

## Related

- [[concepts/vendor-lock-in-llm|Vendor Lock-in in LLM]] — Model picking is constrained by lock-in
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Evals enable safe model switching
- [[concepts/fine-tuning-for-specialization|Fine-Tuning for Specialization]] — Fine-tuning affects model flexibility
