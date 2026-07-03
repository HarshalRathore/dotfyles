---
title: "Triplet Extraction"
tags:
  - knowledge-graph
  - llm
  - extraction
  - nlp
  - rag
  - data-processing
aliases:
  - Entity-Relationship Extraction
  - Triplet Generation
sources:
  - "AI Engineer World's Fair 2025 talk — HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA - https://www.youtube.com/watch?v=-tgQa8Fzf80"
  - "AIEF2025 - Agentic GraphRAG: Simplifying Retrieval Across Structured & Unstructured Data — Zach Blumenfeld - https://www.youtube.com/watch?v=CzM3cW6FdBs"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]"
    type: uses
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: used_by
---

# Triplet Extraction

Triplet extraction is the process of identifying structured (entity, relationship, entity) triples from unstructured text. In the context of [[concepts/graphrag|GraphRAG]] and [[concepts/hybridrag|HybridRAG]] systems, this is the core mechanism for building knowledge graphs from source documents. ^[extracted]

## Format

A triplet consists of three components:
- **Entity 1** (subject) — the first entity, e.g., "ExxonMobil"
- **Relationship** — the connection between them, e.g., "cut"
- **Entity 2** (object) — the second entity, e.g., "spending on oil and gas exploration"

Example from text "ExxonMobil cut spending on oil and gas exploration":
- Entity: ExxonMobil
- Relationship: cut
- Entity: spending on oil and gas exploration ^[extracted]

## Extraction via LLMs

Extracting triplets from unstructured text is inherently difficult, which is why LLMs are used:

1. Define a domain-specific [[concepts/knowledge-graph-ontology-design|ontology]] that specifies what entities and relationship types matter for the use case
2. Incorporate the ontology into an LLM prompt
3. The LLM extracts triplets that conform to the ontology from each document
4. Triplets are stored in a graph database for retrieval ^[extracted]

## Quality Optimization

Several techniques measurably improve triplet extraction quality:

- **Data cleaning** — removing apostrophes, brackets, noise characters via regex improved accuracy
- **Output length control** — reducing longer outputs prevented missing information
- **Fine-tuning** — LoRA fine-tuning of LLaMA models significantly improved accuracy (from 71% to 87% on a 100-document test)
- **Ontology iteration** — refining the ontology prompt through iterative experimentation is the most impactful lever ^[extracted]

## Quality Impact

Triplet quality directly determines retrieval quality. Noisy triplets produce noisy retrieval results. The ontology design and extraction prompt are the most critical factors, consuming ~80% of development effort in a GraphRAG system. ^[extracted]

## Related

- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — the ontology that guides extraction
- [[concepts/graphrag|GraphRAG]] — where triplets are used for retrieval
- [[concepts/hybridrag|HybridRAG]] — hybrid architecture using triplets + vectors
- [[concepts/unstructured-data-extraction|Unstructured Data Extraction]] — broader category of LLM extraction
- [[entities/nvidia|NVIDIA]] — demonstrated fine-tuning LLaMA models for triplet extraction

## Sources

- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk

## Pydantic-Guided Structured Extraction

Zach Blumenfeld at AIEF2025 demonstrated an alternative approach: using Pydantic classes (not ontology prompts) to define the extraction schema. The data model defines: ^[extracted]

- **Entity types** — Person, Skill, Thing (accomplishment), Domain
- **Enumerated accomplishment types** — published, built, won, led, managed, optimized, shipped
- **Domain categories** — high-level work areas (AI, data engineering, analytics)
- **Work type classifications** — type of work performed

The extraction pipeline uses LangChain to decompose documents and produce structured JSON conforming to the Pydantic schema, which is then loaded directly into a graph database. Each document produces multiple structured entities and their relationships (person → knows → skill, person → [accomplishment_type] → thing → [belongs_to] → domain). ^[extracted]

This approach trades ontology flexibility (free-form entity types) for extraction precision (enforced enumeration of valid types), making downstream graph queries more predictable because the entity types and relationship types are known at extraction time. ^[inferred]

The Pydantic approach is complementary to the [[concepts/knowledge-graph-ontology-design|ontology-guided approach]] — they solve the same problem (biasing LLM extraction toward a target schema) with different constraints: ontology prompts for open-ended taxonomies, Pydantic classes for closed-set enumerations. ^[inferred]
