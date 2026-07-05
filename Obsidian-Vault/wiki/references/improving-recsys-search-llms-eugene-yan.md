---
title: "Recsys Keynote: Improving Recommendation Systems & Search in the Age of LLMs — Eugene Yan, Amazon"
tags:
  - reference
  - talk
  - ai-engineer
  - recommendation-systems
  - search
  - llm
sources:
  - "[[sources/watchv=2vlcqd6igva]]"
summary: "AI Engineer World's Fair 2025 keynote covering three ideas for merging recommendation systems and LLMs: semantic IDs, LLM-based data augmentation, and unified models. Includes case studies from Kuaishou, Indeed, Spotify, Netflix, and Etsy."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Recsys Keynote: Improving Recommendation Systems & Search in the Age of LLMs

> **Talk:** Recsys Keynote: Improving Recommendation Systems & Search in the Age of LLMs
> **Speaker:** [[entities/eugene-yan|Eugene Yan]]
> **Organization:** Amazon
> **Event:** AI Engineer World's Fair 2025 (REXIS track)
> **Source:** [YouTube](https://www.youtube.com/watch?v=2vlCqD6igVA)

## Summary

Keynote at the inaugural REXIS (RecSys track at AI Engineer World's Fair) examining how LLMs can improve recommendation systems and search. Eugene Yan presents three high-impact ideas — semantic IDs, LLM-based data augmentation, and unified models — each supported by detailed case studies from major technology companies. The talk traces the evolution of language modeling in RecSys from Word2Vec (2013) through GRUs and transformers to current LLM-integrated approaches. ^[extracted]

## Key Topics

### Semantic IDs

- Hash-based item IDs don't encode item content, causing cold-start and sparsity problems
- Semantic IDs incorporate content understanding, enabling recommendations to work on new items immediately
- Kuaishou's approach: a two-tower network with trainable multimodal semantic IDs using ResNet (visual), BERT (text), and VGG-ish (audio) encoders, concatenated into cluster IDs via k-means
- Kuaishou results: 3.6% increase in cold-start coverage, improved cold-start velocity ^[extracted]

### LLM-Based Data Augmentation

- Good quality data at scale is the lifeblood of ML systems, but metadata creation (query expansion, synonyms, spell checking) is costly with human annotation
- LLMs are outstanding at generating synthetic data and labels for RecSys/search ^[extracted]

**Indeed Case Study:**
- Problem: poor job recommendations via email led to user unsubscribes
- Journey: prompted Mistral/Llama 2 (poor performance) → GPT-4 (90% precision/recall, 22s latency, too costly) → GPT-3.5 (63% precision, too many false positives) → fine-tuned GPT-3.5 (90% precision, 6.7s, still too slow) → distilled lightweight classifier (0.86 AUCROC, <200ms latency)
- Outcome: 20% reduction in bad recommendations, 4% increase in application rate, 5% decrease in unsubscribe rate
- Key insight: quality of recommendations matters more than quantity ^[extracted]

**Spotify Case Study:**
- Challenge: growing new categories (podcasts, audiobooks) beyond music/search
- Solution: query recommendation system using LLMs to generate natural language exploratory queries, combined with conventional techniques (catalog mining, log mining)
- Result: +9% exploratory queries, enabling rapid category growth ^[extracted]

### Unified Models

- Companies typically maintain separate models for ads, search, recommendations, and even sub-tasks — leading to high operational costs and missed learning transfer
- Unified models simplify the system — improvements to one part benefit all use cases
- Alignment risk: compressing too many tasks into one model can degrade performance (may need 2-3 separate unified models instead of one) ^[extracted]

**Netflix — Unicorn (Unified Contextual Ranker):**
- Unified model for search, pre-query, and "more like this" recommendations
- Single input schema: user ID, item ID, search query (imputed as item title for item-to-item), country, task
- Matched or exceeded specialized model metrics across multiple tasks ^[extracted]

**Etsy — Unified Embeddings:**
- Problem: lexical embedding retrieval doesn't account for user preferences; specific/broad queries struggle
- Two-tower architecture with shared encoders for text tokens, product category, and user location
- Quality vector concatenated to product embedding (query side uses constant vector) — simple hack that works
- Result: 2.6% increase in site-wide conversion, >5% increase in search purchases ^[extracted]

### Three Takeaways

1. Semantic IDs — address cold start by making recommendations content-aware
2. Data augmentation — use LLMs for richer, cheaper synthetic data at scale
3. Unified models — simplify system architecture, improve cross-task learning ^[extracted]

## Key Takeaways

1. Hash-based item IDs are a fundamental limitation; semantic IDs (multimodal, trainable) address cold start and sparsity
2. LLM-based data augmentation is cheaper and more scalable than human annotation for RecSys metadata
3. LLM distillation (fine-tune → distill lightweight classifier) is a proven pattern for production deployment
4. Unified models reduce operational complexity; alignment risks may require splitting into 2-3 models
5. Quality of recommendations matters more than quantity — cutting bad recs improves engagement
6. Query recommendation systems enable exploratory search and new category growth

## Pages Created from This Source

- [[concepts/semantic-ids|Semantic IDs]]
- [[concepts/llm-data-augmentation-recsys|LLM Data Augmentation for Recommendation Systems]]
- [[concepts/unified-recommendation-models|Unified Recommendation Models]]
- [[concepts/cold-start-recommendation|Cold Start in Recommendation Systems]]
- [[concepts/quality-vs-quantity-recommendations|Quality vs Quantity in Recommendations]]
- [[concepts/exploratory-query-recommendation|Exploratory Query Recommendation]]
- [[entities/eugene-yan|Eugene Yan]]
- [[entities/kuaishou|Kuaishou]]
- [[entities/indeed|Indeed]]

## Sources

- [YouTube: Recsys Keynote: Improving Recommendation Systems & Search in the Age of LLMs](https://www.youtube.com/watch?v=2vlCqD6igVA)
