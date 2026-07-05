---
title: "LangChain"
tags:
  - framework
  - llm
  - rag
  - extraction
  - graphrag
  - aief2025
aliases:
  - langchain
sources:
  - "[[sources/watchv=j-9ebjbxcbg]]"
  - "[[sources/watchv=czm3cw6fdbs]]"
summary: "An LLM application framework used at AIEF2025 for document decomposition and structured entity extraction from unstructured text, producing JSON conforming to a Pydantic schema for graph database loading."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: used_by
  - target: "[[concepts/triplet-extraction|Triplet Extraction]]"
    type: used_by
  - target: "[[concepts/pydantic|Pydantic]]"
    type: uses
---

# LangChain

LangChain is an LLM application framework that was used at AIEF2025 by [[entities/zach-blumenfeld|Zach Blumenfeld]] for two purposes in the GraphRAG pipeline: document decomposition and structured entity extraction. ^[extracted]

## Role in GraphRAG

In Blumenfeld's AIEF2025 demonstrations, LangChain was used to: ^[extracted]

1. **Decompose documents** — break PDFs and resumes into structured chunks suitable for entity extraction
2. **Produce structured JSON** — extract entities conforming to a Pydantic-defined schema, which are then loaded into a [[entities/neo4j|Neo4j]] graph database

The extraction pipeline uses LangChain's structured output features to produce JSON that conforms to a Pydantic data model defining entity types (Person, Skill, Accomplishment, Domain) and enumerated relationship types. ^[extracted]

## Usage Context

- **Workshop (Intro to GraphRAG, video `J-9EbJBxcbg`)**: LangChain was mentioned as part of the entity extraction pipeline for Module 2 (unstructured data extraction) ^[extracted]
- **Talk (Agentic GraphRAG, video `CzM3cW6FdBs`)**: LangChain was cited alongside Pydantic for the structured extraction from resume PDFs ^[extracted]

## Relationship to Other Concepts

- [[concepts/graphrag|GraphRAG]] — LangChain is one of the extraction frameworks used in GraphRAG pipelines
- [[concepts/triplet-extraction|Triplet Extraction]] — LangChain facilitates the extraction process
- [[concepts/pydantic|Pydantic]] — LangChain produces output conforming to Pydantic schemas
- [[concepts/langgraph|LangGraph]] — a LangChain sub-project for building agent graphs (also mentioned at AIEF2025)

## Sources

- [[references/aief2025-intro-to-graphrag-zach-blumenfeld|AIEF2025 — Intro to GraphRAG Workshop — Zach Blumenfeld]]
- [[references/aief2025-agentic-graphrag-zach-blumenfeld|AIEF2025 — Agentic GraphRAG — Zach Blumenfeld]]
