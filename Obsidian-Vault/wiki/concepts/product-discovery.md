---
title: Product Discovery
category: concepts
tags: [search, discovery, e-commerce, user-experience, recommendation, llm]
summary: "The capability to help users find new and related products beyond their explicit search query — enabling serendipitous discovery like a physical grocery store experience."
sources:
  - "[[sources/watchv=pjavhm_3ljg]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
relationships:
  - target: "[[concepts/search-and-retrieval]]"
    type: related_to
  - target: "[[concepts/query-understanding]]"
    type: related_to
  - target: "[[concepts/cold-start-recommendation]]"
    type: related_to
  - target: "[[concepts/hybrid-search]]"
    type: related_to
created: 2026-07-04
updated: 2026-07-04
---

# Product Discovery

Product discovery is the capability to help users find new and related products beyond their explicit search query. It enables serendipitous exploration — the online equivalent of walking into a grocery aisle and discovering new brands or complementary products. ^[extracted]

## The Problem

Instacart customers reported that while they could find specific products via search, discovery of related items was a "dead end." Users had to make multiple searches to find complementary products, unlike the physical grocery experience where browsing an aisle naturally surfaces new options. ^[extracted]

## Business Impact

Product discovery serves multiple stakeholders:

- **Customers**: Enable exploration and finding new products they'd want to try
- **Advertisers**: Help showcase new products to interested buyers
- **Platform**: Increases overall basket sizes through cross-category discovery

## The Challenge

Pre-LLM systems struggled with product discovery because:

- It requires understanding semantic relationships between products (e.g., pasta → pasta sauce)
- Lack of engagement data for new or niche products
- Traditional search returns a dead end after the initial query results

## Related Concepts

- [[concepts/search-and-retrieval]] — The broader search infrastructure
- [[concepts/query-understanding]] — Query classification enables discovery recommendations
- [[concepts/cold-start-recommendation]] — New products have no discovery data
- [[concepts/hybrid-search]] — Combining methods for better discovery
