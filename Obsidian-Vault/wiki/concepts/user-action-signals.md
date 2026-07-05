---
title: "User Action Signals in Search"
category: concepts
tags: [user-action, implicit-signal, search-relevance, engagement, board-titles, aief2025]
aliases:
  - user action signals
  - implicit user signals
sources:
  - "AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/content-annotation-search|Content Annotation for Search]]"
    type: used_in
  - target: "[[concepts/search-relevance|Search Relevance]]"
    type: improves
  - target: "[[concepts/user-engagement-metrics|User Engagement Metrics]]"
    type: related_to
---

# User Action Signals in Search

**Implicit content annotations derived from user behavior** — such as board titles (user-curated collections) and engagement-driving search queries — that serve as rich semantic signals for relevance models without requiring explicit metadata or human annotation. ^[extracted]

## Two Primary Signal Types

### Board Titles
When users save a pin to a board, the board's title represents an **implicit categorization** by the user. Boards named "Dinner Party Recipes" or "Minimalist Living Room" encode user intent and content context that the pin's own metadata may not capture. ^[extracted]

### Engagement Queries
Search queries that led to the **highest engagement** with a pin (clicks, saves) serve as implicit intent signals. If many users searching for "easy weeknight dinners" engage with a specific pin, that query becomes a powerful annotation of the pin's relevance to that intent. ^[extracted]

## Why They Work

User action signals capture:
- **Community wisdom** — crowd-sourced categorization from millions of users
- **Intent signals** — what users were actually looking for when they engaged
- **Emerging trends** — new board names and queries that reflect current interests
- **Cross-domain understanding** — users may categorize content in ways that transcend explicit metadata categories

Ablation studies at Pinterest confirmed these features produce notable performance gains over VLM captions alone. ^[extracted]

## Design Principle

User action signals exemplify the principle that **behavioral data is a first-class feature source** for relevance models. Rather than treating user actions only as evaluation metrics (clicks, saves), Pinterest uses them as input features — turning the feedback loop into a training signal. ^[inferred]

## Related

- [[concepts/content-annotation-search|Content Annotation for Search]] — user action signals are two of five annotation sources
- [[concepts/search-relevance|Search Relevance]] — where these signals are applied
- [[concepts/user-engagement-metrics|User Engagement Metrics]] — related behavioral measurement

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
