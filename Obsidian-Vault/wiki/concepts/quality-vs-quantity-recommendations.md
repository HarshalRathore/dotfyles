---
title: Quality vs Quantity in Recommendations
category: concepts
tags:
- recommendation-systems
- quality
- metrics
- recsys
- product-metrics
aliases:
- RecSys Quality vs Quantity
- Better Recs Beat More Recs
relationships:
- target: '[[concepts/llm-data-augmentation-recsys]]'
  type: related_to
- target: '[[concepts/exploratory-query-recommendation]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=2vlcqd6igva'
summary: Finding that reducing bad recommendations improves engagement more than maintaining high recommendation volume, demonstrated by Indeed's 20% reduction in bad recs leading to 4% higher application r...
provenance:
  extracted: 0.65
  inferred: 0.3
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Quality vs Quantity in Recommendations

A key finding in recommendation systems: reducing the number of recommendations shown (by filtering out bad ones) can improve overall engagement metrics more than maintaining or increasing the volume of recommendations. This counters the intuition that more recommendations always drive more engagement. ^[extracted]

## Indeed's Findings

Indeed hypothesized that cutting bad job recommendations from email notifications would reduce subscriptions (fewer emails sent), potentially lowering application rates. The actual result was the opposite:

- Cut bad recommendations by 20% using an LLM-distilled classifier
- **Application rate increased by 4%** — better recommendations drove more conversions despite fewer recommendations being sent
- **Unsubscribe rate decreased by 5%** — users who received better recommendations were less likely to opt out ^[extracted]

## Implications

- Quantity is not everything in recommendations — quality makes a significant difference
- Bad recommendations erode user trust; recovering lost trust is nearly impossible once users unsubscribe ^[extracted]
- Investing in recommendation quality (via LLM filtering, semantic IDs, etc.) can improve top-line metrics even when it reduces recommendation volume ^[inferred]
- The effect size (~5% on unsubscribe rate) is substantial for mature products ^[inferred]

## Related Concepts

- [[concepts/llm-data-augmentation-recsys]] — The LLM distillation pipeline that enabled quality filtering
- [[concepts/cold-start-recommendation]] — Cold start items are a key source of low-quality recommendations
- [[concepts/semantic-ids]] — Semantic IDs improve recommendation quality for new items
- [[entities/indeed]] — Company whose case study demonstrated this finding

## Sources

- [[references/improving-recsys-search-llms-eugene-yan|Recsys Keynote: Improving Recommendation Systems & Search in the Age of LLMs]]
