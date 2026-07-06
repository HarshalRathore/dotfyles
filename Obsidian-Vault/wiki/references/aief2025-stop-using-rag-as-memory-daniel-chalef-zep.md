---
title: AIEF2025 — Stop Using RAG as Memory
category: references
tags:
- aief2025
- agent-memory
- domain-aware-memory
- knowledge-graph
- rag
- zep
- graffiti
- temporal-graph
- semantic-similarity
summary: Daniel Chalef of Zep argues that memory for AI agents should be modeled after the business domain, not dumped as arbitrary facts into vector databases. Domain-aware memory using temporal graphs eli...
sources:
- 'https://www.youtube.com/watch?v=t5imo5ntyha'
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.78
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/domain-aware-memory]]'
  type: related_to
- target: '[[entities/zep]]'
  type: related_to
- target: '[[entities/daniel-chalef]]'
  type: related_to
- target: '[[concepts/semantic-similarity]]'
  type: contradicts
---

# AIEF2025 — Stop Using RAG as Memory

**Daniel Chalef** ([[entities/zep|Zep]]) delivered this talk at the AI Engineer World's Fair 2025, arguing that the dominant approach to agent memory — generating arbitrary facts and storing them in vector databases — produces irrelevant noise that pollutes retrieval and causes hallucinations.

## Core Thesis

Memory for AI agents should be modeled after the **business domain**, not generated as free-form facts. The talk demonstrates that semantic similarity is not business relevance: vector embeddings capture no causal or relational structure, so retrieving "facts similar to my favorite tunes" will pull in unrelated facts (e.g., "my dog's name is Melody") that happen to share semantic proximity. ^[extracted]

## The Problem Demonstrated

Chalef shows two concrete failure modes:

1. **ChatGPT memory**: Generates arbitrary facts about users that are irrelevant to the current task context. When a media player agent should remember jazz music preferences, it also captures "I wake up at 7 AM" and "my dog's name is Melody" — facts unrelated to the media domain. ^[extracted]

2. **Arbitrary fact dumping**: Many agent frameworks generate facts and throw them into a vector database or Redis. When recalled, the system returns what is "semantically similar" without any way to differentiate business-relevant facts from noise. ^[extracted]

## The Solution: Domain-Aware Memory

Zep implements domain-aware memory through developer-defined **entity types** and **business rules**:

- Developers define entity types (e.g., `FinancialGoal`, `Debt`, `IncomeSource`) using Pydantic (Python), Zod (TypeScript), or Go structs
- Each entity type has a description and typed fields with business rules
- The agent registers these entities with Zep, which builds the corresponding ontology in a **temporal graph**
- Retrieval filters by specific node types, returning only business-relevant facts ^[extracted]

In the demo, a finance coach agent captures "$5,000/month rent" and stores it as a `Debt` entity with typed fields in the knowledge graph. Retrieval is precise because it filters by node type, not semantic similarity. ^[extracted]

## Graffiti: Open-Source Temporal Graph Framework

Chalef also presented **Graffiti**, Zep's open-source temporal graph framework, which allows developers to build custom entities and edges for their particular business domain. This is the underlying technology that enables Zep's domain-aware memory approach. ^[extracted]

## Key Takeaway

> "Semantic similarity is not business relevance." ^[extracted]

The talk argues that the solution is **domain-aware memory, not better semantic search**. Vectors are projections into embedding space with no causal or relational structure. Memory systems that model the business domain with explicit entity types and typed relationships will outperform free-form fact generation into vector databases. ^[extracted]

## Related Pages

- [[concepts/domain-aware-memory]] — The concept of domain-aware memory as an alternative to vector-based retrieval
- [[concepts/semantic-similarity]] — Why semantic similarity fails for business-relevant memory
- [[concepts/knowledge-graph-ontology-design]] — Ontology design for structured knowledge graphs
- [[concepts/graphrag|GraphRAG]] — Knowledge graph as retrieval index
- [[concepts/agent-memory-knowledge]] — Agent memory systems more broadly
- [[entities/zep]] — Zep, the company behind the technology
- [[entities/daniel-chalef]] — Daniel Chalef, speaker and Zep representative

## Sources

- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
