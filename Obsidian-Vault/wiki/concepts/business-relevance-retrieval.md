---
title: "Business Relevance vs Semantic Similarity"
category: concepts
tags: [retrieval, semantic-similarity, business-domain, agent-memory, knowledge-graph]
summary: "The principle that retrieval should be driven by business relevance (entity type, domain context, user intent) rather than semantic similarity (embedding proximity), which conflates topical proximity with actual relevance."
sources:
  - "[[sources/watchv=t5imo5ntyha]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.77
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/semantic-similarity]]"
    type: contradicts
  - target: "[[concepts/domain-aware-memory]]"
    type: core_principle
  - target: "[[concepts/knowledge-graph-ontology-design]]"
    type: requires
---

# Business Relevance vs Semantic Similarity

**Business relevance** is a retrieval signal based on domain context, entity types, and user intent — as opposed to **semantic similarity**, which retrieves based on embedding proximity. The principle that "semantic similarity is not business relevance" is central to [[concepts/domain-aware-memory|domain-aware memory]]. ^[extracted]

## The Fundamental Distinction

| Signal | What it captures | What it misses |
|---|---|---|
| Semantic similarity | Lexical and topical proximity in embedding space | Domain boundaries, business context, causal relationships |
| Business relevance | Entity type, domain context, user intent | Nuanced topical connections across domains |

When a media player agent searches for "my favorite tunes," semantic similarity returns "Melody" (the dog's name) because the words are close in embedding space. Business relevance would only return music-related facts because they belong to the `MusicPreference` entity type. ^[extracted]

## Why Vectors Can't Capture Business Relevance

Vectors are projections into an embedding space. They capture:
- Lexical similarity (similar words)
- Topical proximity (related topics)
- Statistical co-occurrence patterns

They do **not** capture:
- Domain boundaries (what belongs to the media player domain vs. personal life)
- Causal relationships (why a fact matters for the current task)
- Business semantics (what "at risk" means in your specific business context)

This is why [[entities/zep|Zep]] argues that the solution is **domain-aware memory, not better semantic search**. ^[extracted]

## Achieving Business Relevance

1. **Entity type filtering** — Only retrieve facts from registered entity types relevant to the domain
2. **Typed relationships** — Use graph relationships that encode business semantics, not just topical proximity
3. **Ontology-driven retrieval** — Store the ontology in the graph to control which relationships are traversed
4. **Structured queries** — Use Cypher or similar query languages for precise factual retrieval

## Related Pages

- [[concepts/semantic-similarity]] — The retrieval signal that business relevance replaces
- [[concepts/domain-aware-memory]] — The approach that implements business relevance
- [[concepts/semantic-memory-noise]] — The problem caused by relying on semantic similarity
- [[concepts/knowledge-graph-ontology-design]] — Ontology design for structured retrieval
- [[references/aief2025-stop-using-rag-as-memory-daniel-chalef-zep]] — The talk that articulated this principle

## Sources

- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
