---
title: "Zach Blumenfeld"
tags:
  - person
  - neo4j
  - graphrag
  - ai-engineering
  - aief2025
aliases:
  - Zach Blumenfeld
sources:
  - "[[sources/watchv=j-9ebjbxcbg]]"
  - "[[sources/watchv=czm3cw6fdbs]]"
summary: "Neo4j presenter and educator who delivered two talks at AIEF2025: a hands-on GraphRAG workshop and an architectural talk on agentic GraphRAG using Neo4j, MCP, and Pydantic-based entity extraction."
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
  - target: "[[entities/neo4j|Neo4j]]"
    type: works_for
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
---

# Zach Blumenfeld

Zach Blumenfeld is a presenter and educator at [[entities/neo4j|Neo4j]] who specializes in knowledge graph applications for AI and LLM systems. He delivered two distinct presentations at the AI Engineer World's Fair 2025 (AIEF2025). ^[extracted]

## AIEF2025 Presentations

### Intro to GraphRAG (Workshop)

A hands-on 80-minute workshop (video: `J-9EbJBxcbg`) covering Neo4j graph basics, entity extraction from unstructured data, and building a retrieval agent with LangGraph. Designed for attendees with mixed experience levels. ^[extracted]

### Agentic GraphRAG (Architectural Talk)

A talk (video: `CzM3cW6FdBs`) demonstrating why document-only vector retrieval fails for analytical queries and how structured graph extraction plus MCP-based Cypher generation enables accurate aggregation, similarity, and relationship queries. ^[extracted]

## Key Contributions

- **Agentic GraphRAG pattern**: Demonstrated the knowledge-graph-as-agent-data-layer architecture where agents query structured graphs via MCP-connected Cypher generation rather than searching raw documents. ^[extracted]
- **Iterative ontology expansion**: Advocated starting with the simplest possible data model (Person, Skill, Accomplishment) and expanding iteratively as query requirements grow, as an alternative to heavy up-front ontology design. ^[extracted]
- **Precomputed similarity relationships**: Demonstrated materializing pairwise similarity as graph edges (`SIMILAR_SKILL_SET`) to turn O(n²) computations into simple traversals. ^[extracted]
- **Constraint-driven performance**: Emphasizes node key constraints as a critical performance pattern — without them, Neo4j performs full graph scans on every merge operation. ^[extracted]

## Related

- [[entities/neo4j|Neo4j]] — employer
- [[concepts/graphrag|GraphRAG]] — primary topic of both talks
- [[concepts/cypher-query-language|Cypher Query Language]] — query language taught in workshop
- [[references/aief2025-intro-to-graphrag-zach-blumenfeld|AIEF2025 — Intro to GraphRAG Workshop]]
- [[references/aief2025-agentic-graphrag-zach-blumenfeld|AIEF2025 — Agentic GraphRAG Talk]]

## Sources

- <https://www.youtube.com/watch?v=J-9EbJBxcbg> — Intro to GraphRAG workshop
- <https://www.youtube.com/watch?v=CzM3cW6FdBs> — Agentic GraphRAG talk
