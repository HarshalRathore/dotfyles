---
title: "Exploratory Query Recommendation"
category: concepts
tags: [recommendation-systems, search, query-generation, llm, category-growth]
aliases: [Query Recommendation Systems, Exploratory Search Queries, LLM Query Generation]
relationships:
  - target: "[[concepts/llm-data-augmentation-recsys]]"
    type: related_to
  - target: "[[concepts/cold-start-recommendation]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=2vlcqd6igva"
summary: "Using LLMs to generate natural language search queries that surface new content categories (e.g., podcasts, audiobooks) to users who would not otherwise discover them."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Exploratory Query Recommendation

A technique where a recommendation system generates and suggests search queries to help users discover content they wouldn't otherwise know to search for. This is particularly valuable for surfacing new content categories on platforms with established usage patterns. ^[extracted]

## Spotify's Approach

Spotify needed to grow new categories (podcasts, audiobooks) on a platform dominated by song and artist search:

- **Conventional query sources**: catalog titles, playlist titles, search log mining, artist+"cover" patterns
- **LLM augmentation**: generate natural language exploratory queries for new content categories
- **UX pattern**: search results show immediate hits at the bottom and query recommendations at the top, informing users about podcasts/audiobooks without a banner
- **Key principle**: use conventional techniques for what works, use LLMs to augment rather than replace ^[extracted]

**Result**: +9% exploratory queries — approximately one-tenth of users began exploring new product categories. The speaker notes that 1.1^n compounding makes this a powerful growth mechanism. ^[extracted]

## Application to Category Cold Start

When a platform launches a new category, users have no existing search behavior for it. Exploratory query recommendation solves this by:

- Pre-generating queries that describe the new category in user-friendly language
- Interleaving recommended queries with standard search results
- Training users to discover and search for the new category ^[inferred]

## Related Concepts

- [[concepts/cold-start-recommendation]] — Category cold start is the core problem this addresses
- [[concepts/llm-data-augmentation-recsys]] — LLM data generation is the enabling technique
- [[concepts/quality-vs-quantity-recommendations]] — Better discovery drives quality engagement
- [[entities/spotify]] — Company whose implementation exemplifies the approach

## Sources

- [[references/improving-recsys-search-llms-eugene-yan|Recsys Keynote: Improving Recommendation Systems & Search in the Age of LLMs]]
