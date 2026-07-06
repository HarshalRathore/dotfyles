---
title: "Zep"
category: entities
tags: [company, ai-agents, agent-memory, knowledge-graph, temporal-graph, open-source]
summary: "Company building domain-aware memory for AI agents using temporal graphs. Creator of Graffiti, an open-source temporal graph framework for custom entity and edge definitions."
sources:
  - "https://www.youtube.com/watch?v=t5imo5ntyha"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/domain-aware-memory]]"
    type: implements
  - target: "[[concepts/graffiti-temporal-graph]]"
    type: created
---

# Zep

Zep is a company building domain-aware memory systems for AI agents. Their approach contrasts with the dominant pattern of generating arbitrary facts and storing them in vector databases. ^[extracted]

## Technology

Zep's core technology is built on a **temporal graph** called [[concepts/graffiti-temporal-graph|Graffiti]], which is available as an open-source framework. Graffiti allows developers to define custom entities and edges specific to their business domain. ^[extracted]

Zep provides SDKs for Python, TypeScript, and Go. Developers define entity types using standard schema tools (Pydantic, Zod, or Go structs), and Zep registers these with the underlying graph to build the ontology. ^[extracted]

## Domain-Aware Memory

Zep's approach to agent memory is **domain-aware**: instead of free-form fact generation, developers define what entities matter in their domain (e.g., `FinancialGoal`, `Debt`, `IncomeSource`) and Zep captures structured facts about those entities. Retrieval is precise because it filters by node type rather than semantic similarity. ^[extracted]

## Related Pages

- [[concepts/domain-aware-memory]] — The memory paradigm Zep implements
- [[concepts/graffiti-temporal-graph]] — Graffiti, Zep's open-source temporal graph framework
- [[concepts/semantic-similarity]] — The approach Zep argues against for memory retrieval

## Sources

- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
