---
title: "Netflix's Big Bet: One Model to Rule Recommendations — Yesu Feng, Netflix"
tags:
  - reference
  - talk
  - aief2025
  - recommendation-systems
  - foundation-model
  - recsys
  - netflix
aliases:
  - AIEF2025 Netflix RecSys Foundation Model
  - Yesu Feng Netflix FM 2025
sources:
  - "[[sources/watchv=abz4iygbfpq]]"
summary: "Yesu Feng (Netflix) presents Netflix's bet on a single transformer-based foundation model covering all recommendation use cases — covering tokenization, architecture, scaling evidence, consumption patterns, and LLM knowledge transfer."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Netflix's Big Bet: One Model to Rule Recommendations — Yesu Feng, Netflix

> Yesu Feng, engineer at Netflix, presents the architecture and learnings from Netflix's investment in a single transformer-based foundation model for all personalization use cases. The talk covers the motivation (dozens of duplicative models), the tokenization and model architecture, scaling law validation specific to recommendation systems, three patterns for consuming the foundation model downstream, and LLM-to-RecSys knowledge transfer. ^[extracted]

## Context

This talk was given at AI Engineer World's Fair 2025 (AIEF2025), introduced by [[entities/eugene-yan|Eugene Yan]]. Feng frames the work as a "big bet" that began ~4 years ago (early pandemic), when Netflix's recommendation landscape had grown to dozens of independently developed specialized models. ^[extracted]

## Key Claims

- **Foundation models work for recommendations** — one auto-regressive transformer can serve all recommendation use cases, replacing specialized models with a centralized representation layer. ^[extracted]
- **Scaling laws apply to RecSys** — consistent quality gains from ~10M to 1B+ parameters over 2.5 years, with no saturation observed. ^[extracted]
- **LLM techniques transfer to RecSys** — multi-token prediction, multi-layer representation, and long-context handling all produce notable improvements in the recommendation domain. ^[extracted]
- **Three consumption patterns** — foundation model can be consumed via subgraph integration, embedding push, or fine-tuning/distillation, enabling a wide range of latency/capability tradeoffs. ^[extracted]

## Key Architecture Details

### Tokenization
Events are decomposed into when (time encoding), where (location, device, canvas, row, page), and what (target entity, interaction type, duration). Tokenization decisions have cascading quality effects, similar to LLM tokenization. ^[extracted]

### Model Stack (bottom to top)
1. Event representation — encodes when/where/what
2. Embedding + feature transformation — combines learned ID embeddings with semantic content to address [[concepts/cold-start-recommendation|cold start]]
3. Transformer layers — hidden state output serves as user representation
4. Multi-task objective — predicts entity IDs, action types, metadata, duration, device, and timing ^[extracted]

### Cold Start Solution
ID embeddings alone suffer from cold start for unseen titles. Netflix combines learned ID embeddings with semantic content information (from graph knowledge models and other sources) to handle new content without interaction history. ^[extracted]

## Results

Over ~1.5 years of incorporating the foundation model across applications, Netflix observed growth in both applications using the FM and A/B test wings, validating the leverage hypothesis. New applications can directly fine-tune the FM to launch their first experience, accelerating innovation velocity. ^[extracted]

## Current Research Directions

Three active directions:
1. **Universal representation** — semantic IDs for heterogeneous entity types (games, live streaming)
2. **Generative retrieval for collections** — multi-step decoding at inference to naturally handle diversity and business rules
3. **Prompt tuning for faster adaptation** — soft tokens swapped in/out at inference to prompt different FM behaviors ^[extracted]

## Notable Quotes

- "This lead to naturally many specialized models that got developed over the years... You don't reuse as much as you can. Instead, you just spin up new models pretty much from scratch."
- "One hypothesis is that through scaled up, semi-supervised learning, personalization can be improved."
- "Tokenization decisions have profound impact on your model quality."
- "For recommendation, we need to combine ID embedding learning with other semantic content information. If you only have ID embedding, then you have problem with cold start."
- "Multi-token prediction forces the model to be less myopic, more robust to serving time shift, and forces the model to target long-term user satisfaction."
- "We indeed see high leverage of FM to bring about both A-B test wings as well as infrastructure consolidation."

## Related

- [[entities/yesu-feng|Yesu Feng]] — speaker
- [[entities/netflix|Netflix]] — company
- [[concepts/recsys-foundation-model|Recommendation Foundation Models]] — the core concept
- [[concepts/recsys-event-tokenization|Event Tokenization for RecSys]] — the tokenization approach
- [[concepts/unified-recommendation-models|Unified Recommendation Models]] — broader category
- [[concepts/cold-start-recommendation|Cold Start in Recommendation Systems]] — cold start mitigation
- [[concepts/semantic-ids|Semantic IDs]] — direction for universal entity representation
- [[concepts/llm-data-augmentation-recsys|LLM Data Augmentation for RecSys]] — complementary approach
- [[references/improving-recsys-search-llms-eugene-yan|REXIS Keynote — Eugene Yan]] — the talk that introduced this one

## Sources

- <https://www.youtube.com/watch?v=AbZ4IYGbfpQ>
