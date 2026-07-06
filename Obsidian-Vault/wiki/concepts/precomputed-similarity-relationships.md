---
title: Precomputed Similarity Relationships
tags:
- knowledge-graph
- similarity
- graph-analytics
- neo4j
- performance
- graphrag
- aief2025
aliases:
- Materialized Similarity
- Precomputed Overlap
sources:
- 'https://www.youtube.com/watch?v=j-9ebjbxcbg'
summary: A performance optimization that materializes pairwise entity similarity as graph edges with an overlap property, turning O(n²) similarity computation into a simple graph traversal for repeated quer...
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graph-traversal-similarity|Graph Traversal Similarity]]'
  type: extends
- target: '[[concepts/graph-analytics-rag-curation|Graph Analytics for RAG Curation]]'
  type: related_to
category: concepts
---

# Precomputed Similarity Relationships

Precomputed similarity relationships are a performance optimization where pairwise similarity between entities is computed once and materialized as edges in the graph. Instead of recomputing overlap scores on every query, the system traverses the precomputed edges. ^[extracted]

## The Problem

Computing similarity between all pairs of entities requires O(n²) comparisons. For an employee skills graph with 100 people, that's 4,950 pairwise comparisons. If similarity is computed on-demand via graph traversal, every query that needs similarity triggers this computation. ^[inferred]

## The Solution

Compute all pairwise similarities once, then store them as relationships with an `overlap` property: ^[extracted]

```cypher
MATCH (p1:Person), (p2:Person)
WHERE p1.email < p2.email  // avoid self-loops and duplicates
WITH p1, p2,
  size([(s1:Skill)-[:KNOWS]-(p1) | s1] ∩ [(s2:Skill)-[:KNOWS]-(p2) | s2]) AS overlap
WHERE overlap > 0
MERGE (p1)-[:SIMILAR_SKILL_SET {overlap: overlap}]->(p2)
```

After this computation: ^[extracted]

- Finding similar people becomes a simple traversal: `MATCH (p:Person)-[:SIMILAR_SKILL_SET]->(similar) RETURN similar.name ORDER BY similar.overlap DESC`
- The overlap count is stored as a property, so no re-computation is needed
- New similarity edges can be added incrementally as data grows

## Trade-offs

| Aspect | On-Demand Similarity | Precomputed Similarity |
|---|---|---|
| Query latency | O(n²) per query | O(1) traversal |
| Write latency | None | O(n²) computation on data change |
| Staleness | Always current | May need recomputation when data changes |
| Storage | Minimal | Additional edges for every similar pair |

The speaker's demo showed overlap counts ranging from 1 to 3, suggesting the approach works well for small-to-medium graphs. For large graphs, incremental recomputation (only affected pairs) would be needed. ^[ambiguous]

## Relationship to Other Concepts

- [[concepts/graph-traversal-similarity|Graph Traversal Similarity]] — the similarity computation this optimizes
- [[concepts/graph-analytics-rag-curation|Graph Analytics for RAG Curation]] — another graph algorithm applied to the graph
- [[concepts/multi-hop-retrieval|Multi-Hop Retrieval]] — the traversal strategy used to query precomputed edges

## Sources

- [[references/aief2025-intro-to-graphrag-zach-blumenfeld|AIEF2025 — Intro to GraphRAG Workshop — Zach Blumenfeld]]
