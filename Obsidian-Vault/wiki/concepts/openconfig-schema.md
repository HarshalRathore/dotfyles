---
title: "OpenConfig Schema"
category: concepts
tags:
  - openconfig
  - schema
  - networking
  - data-normalization
  - llm-friendly
  - knowledge-graph
aliases:
  - OpenConfig
sources:
  - "AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo"
summary: "A networking-specific data schema used as the normalization target for network knowledge graph ingestion pipelines, chosen because LLMs understand it well due to extensive documentation."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/etl-pipeline|ETL Pipeline]]"
    type: target_of
  - target: "[[concepts/network-knowledge-graph|Network Knowledge Graph]]"
    type: schema_for
  - target: "[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]"
    type: related_to
---

# OpenConfig Schema

**OpenConfig** is a networking-specific data schema that provides a standardized representation of network devices, interfaces, protocols, and operational state. It is used as the normalization target for ETL pipelines that feed network knowledge graphs, enabling AI agents to query network data through a consistent interface. ^[extracted]

## Why OpenConfig for AI Agents

Cisco's OutShift team chose OpenConfig specifically because LLMs understand it well. The extensive documentation available for OpenConfig on the internet means that LLMs have been trained on it and can reason about it effectively. This makes OpenConfig an ideal intermediate representation for a knowledge graph that will be queried by AI agents via natural language. ^[extracted]

## Role in the Pipeline

In Cisco's network operations system:

1. Heterogeneous data from controllers, Splunk, traffic telemetry, and configuration management systems is ingested
2. An [[concepts/etl-pipeline|ETL pipeline]] transforms all data into OpenConfig schema
3. The normalized data is loaded into [[entities/arango-db|ArangoDB]] as the [[concepts/network-knowledge-graph|network knowledge graph]]
4. AI agents query the graph using OpenConfig as the conceptual model ^[extracted]

## Properties

- **Networking-focused** — designed specifically for network device representation
- **Vendor-neutral** — works across different vendor devices (firewalls, switches, routers)
- **Well-documented** — extensive internet documentation makes it LLM-friendly
- **Structured** — supports the layered architecture needed for efficient agent querying ^[extracted]

## Related

- [[concepts/etl-pipeline|ETL Pipeline]] — transforms data into OpenConfig
- [[concepts/network-knowledge-graph|Network Knowledge Graph]] — stores OpenConfig data
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — the broader ontology design context
- [[concepts/layered-graph-architecture|Layered Graph Architecture]] — how OpenConfig data is structured in the graph
