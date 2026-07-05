---
title: "Splunk"
category: entities
tags:
  - entity
  - company
  - data-analytics
  - monitoring
  - telemetry
  - siem
aliases: []
sources:
  - "AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo"
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
  - target: "[[concepts/streaming-telemetry|Streaming Telemetry]]"
    type: produces
  - target: "[[concepts/etl-pipeline|ETL Pipeline]]"
    type: data_source
---

# Splunk

Splunk is a data analytics and monitoring platform that serves as one of the data sources feeding into the network knowledge graph ingestion pipeline at Cisco. Along with network controllers and traffic telemetry systems, Splunk provides data about the production network state that is transformed and stored in the knowledge graph. ^[extracted]

## Role in Network Knowledge Graph

In Cisco's OutShift network operations system, Splunk is one of the primary data sources in the [[concepts/etl-pipeline|ETL ingestion pipeline]]. The pipeline consolidates data from multiple sources — controllers, Splunk, traffic telemetry, and configuration management systems — each producing data in different formats (JSON, YANG, streaming telemetry, configuration files) into a unified [[concepts/openconfig-schema|OpenConfig schema]] stored in [[entities/arango-db|ArangoDB]]. ^[extracted]

## Sources

- AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo
