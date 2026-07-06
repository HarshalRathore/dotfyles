---
title: Streaming Telemetry
category: concepts
tags:
- streaming-telemetry
- network-operations
- telemetry
- real-time
- data-ingestion
- monitoring
aliases:
- Stream Telemetry
sources:
- AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo
summary: A real-time data delivery mode for network telemetry where devices continuously stream operational data (interfaces, protocols, performance metrics) to monitoring systems, serving as one of the ing...
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/etl-pipeline|ETL Pipeline]]'
  type: data_source
- target: '[[concepts/network-knowledge-graph|Network Knowledge Graph]]'
  type: feeds
---

# Streaming Telemetry

**Streaming telemetry** is a real-time data delivery mechanism for network monitoring where network devices continuously stream operational data (interface statistics, protocol state, performance metrics) to centralized monitoring systems. It is one of the primary data sources for network knowledge graph ingestion pipelines, alongside configuration files and API queries. ^[extracted]

## Role in Network Knowledge Graphs

In Cisco's OutShift system, streaming telemetry is one of three data delivery modes identified for network data ingestion:

1. **Streaming telemetry** — real-time, continuous data from devices
2. **Configuration files** — batch configuration data (JSON, YANG)
3. **Other data forms** — additional structured and unstructured data ^[extracted]

The [[concepts/etl-pipeline|ETL pipeline]] ingests streaming telemetry data from sources like [[entities/splunk|Splunk]] and traffic telemetry systems, transforms it into [[concepts/openconfig-schema|OpenConfig schema]], and loads it into the [[entities/arango-db|ArangoDB]] knowledge graph. ^[extracted]

## Characteristics

- **Real-time** — provides near-instant visibility into network state, critical for monitoring production changes
- **Continuous** — devices push data without requiring pull-based polling
- **Structured** — typically uses protobuf or JSON encoding
- **High volume** — generates large amounts of data requiring efficient ingestion and storage ^[inferred]

## Related

- [[concepts/etl-pipeline|ETL Pipeline]] — ingests streaming telemetry data
- [[concepts/network-knowledge-graph|Network Knowledge Graph]] — stores the normalized telemetry data
- [[concepts/openconfig-schema|OpenConfig Schema]] — the normalization target
- [[entities/splunk|Splunk]] — a monitoring system that processes streaming telemetry
