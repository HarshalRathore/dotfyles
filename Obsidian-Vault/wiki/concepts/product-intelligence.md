---
title: Product Intelligence
tags: [product-intelligence, issue-management, ai, search, re-ranking, relationship-mapping]
aliases: [product intelligence, similar-issues-v2]
summary: "An AI pipeline that analyzes relationships between work items using query rewriting, hybrid search, re-ranking, and deterministic rules to produce suggested labels, assignees, duplicates, and project recommendations."
sources: ["[[sources/aief2025-building-the-platform-for-agent-coordination-—-tom-moor]]", "[[sources/watchv=ug9iadmi2dg]]"]
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: [[concepts/hybrid-search|Hybrid Search]]
    type: uses
  - target: [[concepts/query-rewriting|Query Rewriting]]
    type: uses
  - target: [[concepts/re-ranking|Re-ranking]]
    type: uses
  - target: [[concepts/semantic-similarity|Semantic Similarity]]
    type: extends
---

# Product Intelligence

Product Intelligence is an AI pipeline that maps relationships between work items (issues, projects, tasks) by combining multiple retrieval and reasoning techniques. Linear's "Product Intelligence" feature represents "Similar Issues v2" — a significant upgrade over simple cosine similarity matching. ^[extracted]

## Pipeline Architecture

Product Intelligence uses a multi-stage pipeline:

1. **Query Rewriting:** Transforms the input issue's context into an optimized search query ^[extracted]
2. **Hybrid Search Engine:** Retrieves candidate related items using both keyword and vector search ^[extracted]
3. **Re-ranking:** Ranks retrieved candidates by relevance using a learned model ^[extracted]
4. **Deterministic Rules:** Applies business logic to refine results ^[extracted]

The output is a structured map of relationships: not just *which* items are related, but *how* and *why* they are related. ^[extracted]

## Outputs

The relationship map powers several user-facing features:

- **Suggested labels:** Labels that should be applied based on related issues
- **Suggested assignees:** People who should work on this issue, with reasoning
- **Possible duplicates:** Related issues that may already address the same problem
- **Project recommendations:** For project management, why a person might be the right fit or why a project is the right home for an issue ^[extracted]

## Contrast with v1

Linear's first version of similar issues used "simple cosine embedding comparisons against a vector database" — a naive approach that worked but lacked nuance. Product Intelligence adds semantic understanding of *relationships* rather than just *similarity*. ^[extracted]

## Why It Matters

For teams like OpenAI that process "thousands of tickets," having AI help route work to the right people and identify duplicates is critical for throughput. Product Intelligence reduces the cognitive load of issue triage and project planning. ^[extracted]

## Related

- [[concepts/hybrid-search|Hybrid Search]]
- [[concepts/query-rewriting|Query Rewriting]]
- [[concepts/re-ranking|Re-ranking]]
- [[concepts/semantic-similarity|Semantic Similarity]]
- [[entities/linear|Linear]]
