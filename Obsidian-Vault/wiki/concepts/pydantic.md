---
title: "Pydantic"
tags:
  - python
  - data-model
  - llm
  - extraction
  - graphrag
  - aief2025
aliases:
  - pydantic
sources:
  - "[[sources/watchv=j-9ebjbxcbg]]"
  - "[[sources/watchv=czm3cw6fdbs]]"
summary: "A Python library for data validation via type annotations. At AIEF2025, used as the schema definition for LLM-guided entity extraction from unstructured documents, producing structured JSON for graph database loading."
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
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: used_by
  - target: "[[concepts/triplet-extraction|Triplet Extraction]]"
    type: used_by
  - target: "[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]"
    type: implements
---

# Pydantic

Pydantic is a Python data validation library that uses type annotations to define data models. At AIEF2025, [[entities/zach-blumenfeld|Zach Blumenfeld]] demonstrated using Pydantic classes as the schema definition for LLM-guided entity extraction from unstructured documents. ^[extracted]

## Role in GraphRAG

Pydantic serves as the bridge between the [[concepts/knowledge-graph-ontology-design|knowledge graph ontology]] and the LLM extraction pipeline. Instead of encoding the ontology as natural language in prompts, Pydantic classes provide a programmatic, type-enforced schema. ^[extracted]

The data model defines: ^[extracted]

- **Entity types** — Person, Skill, Accomplishment (Thing), Domain
- **Enumerated accomplishment types** — published, built, won, led, managed, optimized, shipped
- **Domain categories** — high-level work areas (AI, data engineering, analytics)
- **Work type classifications** — type of work performed

LLM output is validated against this schema, ensuring every extracted entity conforms to the expected structure before being loaded into the graph database. ^[extracted]

## Trade-offs

The Pydantic approach trades ontology flexibility (free-form entity types) for extraction precision (enforced enumeration of valid types), making downstream graph queries more predictable because entity types and relationship types are known at extraction time. ^[extracted]

This is complementary to the [[concepts/triplet-extraction|ontology-guided approach]] — Pydantic for closed-set enumerations, ontology prompts for open-ended taxonomies. ^[inferred]

## Relationship to Other Concepts

- [[concepts/graphrag|GraphRAG]] — Pydantic schemas guide entity extraction
- [[concepts/triplet-extraction|Triplet Extraction]] — Pydantic provides the output schema
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — Pydantic is one way to encode an ontology
- [[concepts/langchain|LangChain]] — used alongside Pydantic for the extraction pipeline

## Sources

- [[references/aief2025-intro-to-graphrag-zach-blumenfeld|AIEF2025 — Intro to GraphRAG Workshop — Zach Blumenfeld]]
- [[references/aief2025-agentic-graphrag-zach-blumenfeld|AIEF2025 — Agentic GraphRAG — Zach Blumenfeld]]
