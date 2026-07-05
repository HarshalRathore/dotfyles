---
title: "ArangoDB"
category: entities
tags:
  - entity
  - company
  - graph-database
  - document-database
  - multi-model
  - ai
aliases:
  - Arango DB
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
  - target: "[[entities/neo4j|Neo4j]]"
    type: competitor
  - target: "[[concepts/network-knowledge-graph|Network Knowledge Graph]]"
    type: implements
---

# ArangoDB

ArangoDB is a multi-model database that supports graph, document, and key-value data models. It was evaluated alongside [[entities/neo4j|Neo4j]] as a potential knowledge graph platform for enterprise AI applications and selected by Cisco's OutShift team for their network operations system. ^[extracted]

## Selection Criteria

In Cisco's network knowledge graph project, the engineering team evaluated multiple database options including Neo4j (the market leader) and ArangoDB. The team centered on these two platforms. ^[extracted]

## Why ArangoDB Was Chosen

Cisco selected ArangoDB over Neo4j for historical reasons: the team had existing use cases in the security space that were recommendation-system type workloads, where ArangoDB's multi-model capabilities (document + graph) were better suited. The team is still exploring Neo4j for other use cases within the same project. ^[extracted]

## Use in Network Knowledge Graph

ArangoDB serves as the database layer for Cisco's network knowledge graph, storing network topology, configuration, and telemetry data in an [[concepts/openconfig-schema|OpenConfig schema]]. The graph supports layered querying for network operations tasks like configuration drift detection and reachability testing. ^[extracted]

## Sources

- AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo
