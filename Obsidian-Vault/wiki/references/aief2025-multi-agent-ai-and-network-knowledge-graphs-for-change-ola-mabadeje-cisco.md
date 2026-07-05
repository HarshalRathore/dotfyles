---
title: "AIEF2025 — Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco"
category: references
tags:
  - aief2025
  - multi-agent
  - knowledge-graph
  - network-operations
  - digital-twin
  - arango-db
  - openconfig
  - change-management
aliases:
  - AIEF2025 Ola Mabadeje Cisco
sources:
  - "AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo"
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/ola-mabadeje|Ola Mabadeje]]"
    type: related_to
  - target: "[[entities/cisco|Cisco]]"
    type: related_to
  - target: "[[concepts/network-knowledge-graph|Network Knowledge Graph]]"
    type: describes
  - target: "[[concepts/digital-twin|Digital Twin]]"
    type: describes
  - target: "[[entities/arango-db|ArangoDB]]"
    type: uses
---

# AIEF2025 — Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco

Ola Mabadeje, a product lead at Cisco's OutShift incubation group, presented a production system that combines multi-agent AI, natural language interfaces, and network knowledge graphs to solve change management failures in network operations. The system was built for a customer experiencing high failure rates during network change deployments. ^[extracted]

## Core Problem

Network change management suffers from production failures due to the complexity of multi-vendor, multi-device environments where devices produce data in different formats (JSON, YANG, etc.). The customer's specific pain point: high failure rates during production change deployments. ^[extracted]

## Solution Architecture

The solution has three main components:

1. **Natural language interface** — network operations teams (and other systems like ITSM tools) interact via natural language. Agents on both sides (Cisco and ServiceNow) communicate with each other. ^[extracted]
2. **Multi-agent system** — specialized agents handle specific tasks: impact assessment, testing, reasoning about potential network failures. ^[extracted]
3. **Network knowledge graph (digital twin)** — a graph-based representation of the production network that agents query to make decisions. Built on ArangoDB with OpenConfig schema. ^[extracted]

## Technology Stack

- **Database**: ArangoDB (chosen over Neo4j due to pre-existing security/recommendation system use cases; Neo4j still explored for other use cases)
- **Schema**: OpenConfig — a networking-specific schema that LLMs understand well due to extensive documentation
- **Data sources**: Controllers, Splunk, traffic telemetry, configuration management systems
- **Ingestion**: ETL pipeline transforming multi-format data into unified OpenConfig schema
- **Interface**: Natural language via engineers and inter-system agent communication (e.g., with ServiceNow)

## Graph Architecture

The knowledge graph is structured in layers corresponding to networking concepts, allowing agents to query the appropriate depth:

- **Raw configuration layer** — for configuration drift comparisons
- **Data plane + control plane layers** — for reachability testing
- Agents navigate directly to the layer needed for their specific task rather than traversing all layers. ^[extracted]

## Key Requirements

The product team defined five requirements: multi-modal flexibility (key-value pairs, JSON, relationships), instant query performance, operational flexibility (consolidated schema framework), vector indexing for semantic search, and multi-vendor support with minimal customer integration effort. ^[extracted]

## Sources

- AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo
