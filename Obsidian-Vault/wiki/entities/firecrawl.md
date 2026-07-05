---
title: "Firecrawl"
category: entities
tags:
  - web-crawling
  - parsing
  - vendor
  - markdown-output
summary: Firecrawl is a web crawling service that converts websites into structured markdown. Selected by 11x for Alice's knowledge base website parsing.
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/parsing]]"
    type: implements
  - target: "[[entities/alice-ai-sdr]]"
    type: uses
---

# Firecrawl

Firecrawl is a web crawling service that converts websites into structured markdown. It was selected by 11x for parsing websites into their Alice knowledge base.

## Selection Rationale

1. **Prior familiarity** — 11x had already worked with Firecrawl on a previous project
2. **Crawl endpoint maturity** — At the time of selection, competitor Tavily's crawl endpoint was still in development, making Firecrawl the only viable option

## Output

Converts web pages (e.g., company homepages) into structured markdown documents, preserving headings, paragraphs, and other structural elements.

## Sources

- AIEF2025 talk: "Building Alice's Brain" by Sherwood & Satwik, 11x
