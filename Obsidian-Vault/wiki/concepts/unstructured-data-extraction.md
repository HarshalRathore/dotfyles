---
title: "Unstructured Data Extraction"
tags:
  - ai
  - data-extraction
  - enterprise
  - documents
  - llm
sources:
  - "https://www.youtube.com/watch?v=12v5S1n1eOY"
  - "AI Engineer World's Fair 2025 talk — HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA - https://www.youtube.com/watch?v=-tgQa8Fzf80"
summary: "Using LLMs to extract structured data from unstructured enterprise documents like contracts, leases, and proposals. Also covers triplet extraction for knowledge graph construction."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
created: 2026-07-03
updated: 2026-07-03
---

# Unstructured Data Extraction

Unstructured data extraction is the process of converting information from unstructured documents (contracts, leases, project proposals, scanned PDFs) into structured data (fields, tables, metadata). Approximately 90% of enterprise data is unstructured, making this a central challenge for enterprise AI.

## Legacy Approach: IDP

Before generative AI, Intelligent Document Processing (IDP) was a multi-billion dollar industry dedicated to this problem. The legacy approach required:
- Specialized AI models trained per document type
- Large corpora of labeled training data
- Custom vendors and bespoke ML models
- Significant ongoing maintenance

The result was brittle, expensive, and rarely applied to most of an enterprise's unstructured data. ^[inferred]

## The LLM Breakthrough

Generative AI models (starting around GPT-3) changed the economics dramatically — a general-purpose LLM could outperform even the best custom models at extraction tasks across any document type with simple prompting. This meant:

- No per-document-type training needed
- Flexible across languages and formats
- Good accuracy out of the box
- Required only basic preprocessing (OCR, text extraction)

## The Complexity Wall

Simple extraction works for straightforward documents (10 fields, 10 pages) but breaks down at enterprise scale:

- **Large documents** — 300-page leases with 300 extraction fields overwhelm a single LLM call
- **Cross-field dependencies** — related fields (e.g., parties and their addresses) extracted independently produce mismatches
- **OCR fragility** — scanned documents with handwriting, crossed-out text, or unusual formatting compound extraction errors
- **Language and format diversity** — international enterprises need multi-language support across varied file formats
- **Accuracy requirements** — enterprise users need high accuracy, not just confidence scores

## Agentic Extraction Pipeline

[[entities/box|Box]]'s approach to overcoming the complexity wall uses [[concepts/agentic-architecture|agentic architecture]]:

1. **Field grouping** — intelligently cluster related fields so the model handles them together
2. **Multi-query decomposition** — separate extraction queries for different field groups
3. **Multi-model voting** — when uncertainty is high, multiple model vendors vote on answers ^[inferred]
4. **OCR verification** — visually re-checking scanned pages for uncertain text
5. **LLM-as-a-judge** — evaluating extraction quality and triggering retries with specific feedback

## Triplet Extraction for Knowledge Graphs

Another application of LLM-based unstructured data extraction is [[concepts/triplet-extraction|triplet extraction]] for [[concepts/knowledge-graph-ontology-design|knowledge graph construction]]. Instead of extracting flat fields, the LLM extracts (entity, relationship, entity) triplets guided by a domain-specific ontology. This approach is the core mechanism for building [[concepts/graphrag|GraphRAG]] and [[concepts/hybridrag|HybridRAG]] systems. ^[extracted]

The quality of extracted triplets depends heavily on:
- **Ontology design** — defining entity types, relationship types, and their allowed combinations (~80% of the effort)
- **Prompt engineering** — encoding the ontology into LLM extraction prompts
- **Data cleaning** — removing noise characters (regex) measurably improves accuracy ^[extracted]

Fine-tuning the LLM (e.g., LoRA on LLaMA models) can significantly improve triplet extraction accuracy — from 71% baseline to 87% on a 100-document test. ^[extracted]

## Sources

- [[references/box-agentic-platform-ben-kus|Building an Agentic Platform — Ben Kus, CTO Box]] — Conference talk
- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk
