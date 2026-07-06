---
title: "LLM Data Augmentation for Recommendation Systems"
category: concepts
tags: [recommendation-systems, llm, data-augmentation, synthetic-data, recsys]
aliases: [LLM Synthetic Data for RecSys, LLM-Augmented RecSys Data]
relationships:
  - target: "[[concepts/cold-start-recommendation]]"
    type: related_to
  - target: "[[concepts/quality-vs-quantity-recommendations]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=2vlcqd6igva"
summary: "Using LLMs to generate synthetic data, labels, and metadata for recommendation systems and search — cheaper and more scalable than human annotation."
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

# LLM Data Augmentation for Recommendation Systems

Using LLMs to generate synthetic data, labels, and metadata for search and recommendation systems. This approach addresses the high cost and effort of human annotation for tasks like query expansion, synonym generation, spell checking, and content labeling — the lifeblood data that ML systems need to perform well. ^[extracted]

## Motivation

- Search and recommendation systems require extensive metadata: query expansion, synonyms, spell checking, content labels
- Human annotation is costly and slow
- LLMs excel at generating high-quality labels and synthetic data at scale
- Far lower cost and effort than human annotation, especially on tail queries and tail items ^[extracted]

## Indeed: Distilling LLM Filtering for Job Recommendations

Indeed faced the problem of bad job recommendations via email causing user unsubscribes. Their systematic approach to using LLMs:

1. **Evaluation first**: Had domain experts label job recommendation/user pairs
2. **Tried open models** (Mistral, Llama 2): poor performance, couldn't attend to resume + job description details
3. **GPT-4**: 90% precision and recall, but 22s latency and too costly
4. **GPT-3.5**: poor precision (63%) — would throw out 37% of good recommendations
5. **Fine-tuned GPT-3.5**: achieved target precision at 1/4th GPT-4's cost and latency (6.7s) but still too slow for online filtering
6. **Distilled lightweight classifier**: 0.86 AUCROC, <200ms latency — fast enough for real-time filtering

**Outcome**: 20% reduction in bad recommendations, 4% increase in application rate, 5% decrease in unsubscribe rate. ^[extracted]

## Spotify: LLM-Generated Queries for Category Growth

Spotify used LLMs to generate natural language exploratory queries for new categories (podcasts, audiobooks):

- Combined conventional techniques (catalog mining, search log mining, artist+"cover" queries) with LLM-generated natural language queries
- LLMs augment rather than replace conventional methods
- Resulted in +9% exploratory queries, enabling rapid new category growth ^[extracted]

## Key Patterns

- **LLM distillation pipeline**: prompt an expensive/large model → fine-tune a smaller model → distill into a lightweight classifier for production ^[extracted] ^[inferred]
- **LLMs as augmenters, not replacements**: use conventional techniques for what works, augment with LLMs where needed ^[extracted]
- **Evaluation-first approach**: label ground-truth data before experimenting with LLMs ^[extracted]

## Related Concepts

- [[concepts/semantic-ids]] — Alternative approach to cold start via content-aware item IDs
- [[concepts/quality-vs-quantity-recommendations]] — Related finding that better recommendations beat more recommendations
- [[concepts/cold-start-recommendation]] — Problem that data augmentation helps address
- [[entities/indeed]] — Company whose case study exemplifies the LLM distillation pipeline
- [[entities/spotify]] — Company whose exploratory query approach showcases LLM augmentation

## Sources

- [[references/improving-recsys-search-llms-eugene-yan|Recsys Keynote: Improving Recommendation Systems & Search in the Age of LLMs]]
