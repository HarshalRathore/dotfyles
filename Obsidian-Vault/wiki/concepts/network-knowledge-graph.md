---
title: Network Knowledge Graph
category: concepts
tags:
- knowledge-graph
- network-operations
- digital-twin
- openconfig
- arango-db
- multi-agent
aliases:
- Network KG
sources:
- AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo
summary: A graph-based representation of a production network built on OpenConfig schema and ArangoDB, enabling AI agents to reason about network changes, perform impact assessments, and execute testing bef...
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/digital-twin|Digital Twin]]'
  type: implements
- target: '[[concepts/openconfig-schema|OpenConfig Schema]]'
  type: uses
- target: '[[entities/arango-db|ArangoDB]]'
  type: implemented_on
- target: '[[concepts/layered-graph-architecture|Layered Graph Architecture]]'
  type: structured_as
---

# Network Knowledge Graph

A **network knowledge graph** is a structured, graph-based representation of a production network's topology, configuration, and operational state. It serves as the data backbone for AI agents performing network change management, impact assessment, and failure prediction. ^[extracted]

## Purpose

Network knowledge graphs solve a fundamental problem in networking: the complexity of representing multi-vendor, multi-device environments where each device produces data in different formats (JSON, YANG, streaming telemetry, configuration files). The knowledge graph consolidates this heterogeneous data into a unified schema that AI agents can query and reason about. ^[extracted]

## Architecture

Cisco's OutShift implementation (presented at AIEF2025 by [[entities/ola-mabadeje|Ola Mabadeje]]) uses:

- **Database**: [[entities/arango-db|ArangoDB]] multi-model database
- **Schema**: [[concepts/openconfig-schema|OpenConfig]] — a networking-specific schema that LLMs understand well due to extensive documentation
- **Ingestion**: [[concepts/etl-pipeline|ETL pipeline]] transforming data from controllers, Splunk, traffic telemetry, and configuration management systems
- **Structure**: [[concepts/layered-graph-architecture|layered architecture]] matching networking conceptual layers

## Key Capabilities

1. **Impact assessment** — agents query the graph to determine how a proposed change will affect the network
2. **Configuration drift detection** — compare current state against desired configuration
3. **Reachability testing** — verify network connectivity through the graph's data plane and control plane layers
4. **Failure reasoning** — agents analyze graph structure to predict potential failure modes before deployment
5. **Natural language interface** — engineers and other agents interact with the graph via natural language queries ^[extracted]

## Product Requirements

The network knowledge graph was designed to satisfy five key requirements:

1. **Multi-modal flexibility** — supports key-value pairs, JSON files, and entity relationships
2. **Performance** — instant node access regardless of location in the graph
3. **Operational flexibility** — consolidated schema framework for data normalization
4. **Vector indexing** — enables semantic search capabilities alongside graph traversal
5. **Multi-vendor support** — works across different vendor devices with minimal customer integration effort ^[extracted]

## Database Selection

The engineering team evaluated [[entities/neo4j|Neo4j]] (market leader) and [[entities/arango-db|ArangoDB]], centering on these two. ArangoDB was chosen due to existing security/recommendation system use cases where its multi-model capabilities were advantageous. Neo4j is still being explored for other use cases within the project. ^[extracted]

## Related

- [[concepts/digital-twin|Digital Twin]] — the testing layer built on top of the knowledge graph
- [[concepts/openconfig-schema|OpenConfig Schema]] — the standardized networking schema used
- [[concepts/layered-graph-architecture|Layered Graph Architecture]] — the structural organization
- [[concepts/etl-pipeline|ETL Pipeline]] — how heterogeneous network data is ingested
- [[concepts/multi-agent-workflows|Multi-Agent Workflows]] — agents that query and act on the graph
