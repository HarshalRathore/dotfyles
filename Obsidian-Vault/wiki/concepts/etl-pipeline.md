---
title: "ETL Pipeline"
category: concepts
tags:
  - etl
  - data-pipeline
  - network-operations
  - data-ingestion
  - schema-normalization
  - openconfig
aliases:
  - Extract Transform Load
sources:
  - "AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo"
summary: "A data ingestion pipeline that transforms heterogeneous network data from multiple sources and formats into a unified schema (OpenConfig) for storage in a knowledge graph."
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
  - target: "[[concepts/network-knowledge-graph|Network Knowledge Graph]]"
    type: feeds
  - target: "[[concepts/openconfig-schema|OpenConfig Schema]]"
    type: normalizes_to
  - target: "[[concepts/streaming-telemetry|Streaming Telemetry]]"
    type: ingests_from
---

# ETL Pipeline

An **ETL (Extract, Transform, Load) pipeline** in network operations is a data ingestion system that collects heterogeneous data from multiple network sources, transforms it into a unified schema, and loads it into a knowledge graph for agent consumption. ^[extracted]

## Network Data Challenge

Network environments present a unique data ingestion challenge: different data sources produce data in different formats and languages. Cisco's OutShift team identified three dimensions of data heterogeneity:

1. **Data sources** — controller systems, devices themselves, agents in devices, configuration management systems, monitoring tools (Splunk), traffic telemetry
2. **Data formats** — JSON, YANG, streaming telemetry, configuration files
3. **Data delivery modes** — streaming telemetry (real-time), configuration files (batch), API queries (on-demand) ^[extracted]

## Cisco's ETL Pipeline

The pipeline ingests data from:

- **Controllers** — network management controllers
- **Splunk** — monitoring and log analytics
- **Traffic telemetry** — real-time traffic data
- **Configuration management systems** — device configuration data

All data is transformed into [[concepts/openconfig-schema|OpenConfig schema]], a networking-specific schema that provides a unified representation. The transformed data is loaded into [[entities/arango-db|ArangoDB]] as the knowledge graph. ^[extracted]

## Design Goals

1. **Schema normalization** — heterogeneous data → unified OpenConfig schema
2. **LLM-readiness** — OpenConfig was chosen because LLMs understand it well (extensive documentation exists)
3. **Multi-source consolidation** — one schema framework for all data sources
4. **Agent-actionable** — the output must be structured so AI agents can take meaningful actions ^[extracted]

## Related

- [[concepts/network-knowledge-graph|Network Knowledge Graph]] — the destination of the ETL pipeline
- [[concepts/openconfig-schema|OpenConfig Schema]] — the target normalization schema
- [[concepts/streaming-telemetry|Streaming Telemetry]] — one of the data ingestion modes
- [[concepts/knowledge-graph-construction-pipeline|Knowledge Graph Construction Pipeline]] — the broader graph-building context
