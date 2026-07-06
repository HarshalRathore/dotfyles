---
title: '360Brew: LLM-based Personalized Ranking and Recommendation — Hamed and Maziar, LinkedIn AI'
tags:
- reference
- talk
- aief2025
- recommendation-systems
- llm
- personalization
- foundation-model
- linkedin
- 360brew
aliases:
- AIEF2025 360Brew
- LinkedIn 360Brew
- Hamed Maziar LinkedIn AI
sources:
- 'https://www.youtube.com/watch?v=u0s6cfzay5c'
summary: Hamed and Maziar (LinkedIn AI) present 360Brew, a single LLM-based foundation model (~150B params distilled to 3B) that replaces dozens of disjoint recommendation models at LinkedIn, with zero-shot...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: references
---

# 360Brew: LLM-based Personalized Ranking and Recommendation — Hamed and Maziar, LinkedIn AI

> Hamed and Maziar from LinkedIn AI present 360Brew at AI Engineer World's Fair 2025 — a single large language model-based foundation model that replaces dozens of disjoint, task-specific recommendation models at LinkedIn. The model (Brew XL, ~150B parameters, distilled to 3B for production) is designed for zero-shot capability, in-context learning for cold-start users, and instruction-following for user-directed personalization. The talk covers the brewing pipeline (upcycling → pre-training → fine-tuning → instruction fine-tuning → alignment → distillation), three experimentally validated scaling levers (data, model size, context length), and results on cold-start and out-of-domain generalization. ^[extracted]

## Context

Recommendation and ranking are deeply integrated into LinkedIn's daily user experience — from feed articles to job search. However, LinkedIn's existing system suffered from:

- Disjoint, task-specific models that are individually optimized
- No leverage of the most advanced architecture (LLMs)
- Time-consuming rollouts, one model at a time

The question driving 360Brew: **what if one model could solve all personalization tasks at once?** ^[extracted]

## The Four Pillars of 360Brew

1. **One model for all tasks** — a single foundation model replaces many specialized models
2. **Zero-shot capability** — new surfaces can be served by prompting the model, not by training new models
3. **In-context learning** — cold-start users handled with few examples or natural language descriptions
4. **Instruction following** — users can tell the model their interests in natural language ^[extracted]

## The Brewing Pipeline

1. Open-source model → **upcycling** (control size for throughput/quality tradeoff) → **continuous pre-training** → **fine-tuning** → **instruction fine-tuning** → **alignment** → **Brew XL** (~150B params, quality-optimized) → **distillation** to ~3B params (production-serving) ^[extracted]

**Key finding:** You have to go big to go small. Training a small model from scratch does not work well; distillation from a large teacher is essential. ^[extracted]

## Promptification

The core technique: convert all user and interaction data into prompts. User history, profile, and past interactions are formatted with instructions, member data, and interaction history to ask the model about relevance of new items. This formalizes recommendation as an LLM task. ^[extracted]

## Scaling Levers (Experimental)

Three levers validated:

1. **Data scaling** — more behavior data → better performance (6 months to 1 year of logged data)
2. **Model size** — 7B → 8×22B showed consistent improvement
3. **Context length** — more user history → better performance, but drops beyond a point because current models don't generalize well to very long contexts ^[extracted]

## Results

- **Cold-start:** The gap between 360Brew and production models **grows** as user interactions decrease (<5, <100 interactions), proving world knowledge helps data-sparse users ^[extracted]
- **Out-of-domain:** Four completely unseen tasks demonstrated generalization to problems never encountered in training ^[extracted]
- **Automation:** Building extensive automation into the pipeline was a key lesson for tractable large model development ^[extracted]

## Notable Quotes

- "Recommendation and ranking is deeply integrated in our daily life."
- "They are disjoint, optimized... not leveraging the most advanced architecture... rolled out one by one, which is very time-consuming and unproductive."
- "You have to first go big and then go small."
- "The recommendation systems are very, very compute-hungry."
- "You build a lot of automation into these pipelines in order to make the fact that making these models is actually very complicated into a much easier and more manageable situation."

## Related

- [[entities/linkedin|LinkedIn]] — company
- [[entities/hamed-linkedin-ai|Hamed (LinkedIn AI)]] — co-presenter
- [[entities/maziar-linkedin-ai|Maziar (LinkedIn AI)]] — co-presenter
- [[concepts/360brew|360Brew]] — deep-dive concept page
- [[concepts/unified-recommendation-models|Unified Recommendation Models]] — broader architectural pattern
- [[concepts/recsys-foundation-model|Recommendation Foundation Models]] — similar Netflix approach
- [[concepts/model-distillation|Model Distillation]] — Brew XL → 3B distillation
- [[concepts/cold-start-recommendation|Cold Start in Recommendation Systems]] — cold-start results
- [[concepts/scaling-laws|Scaling Laws]] — three scaling levers validated
