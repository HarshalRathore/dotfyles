---
title: "Layered Graph Architecture"
category: concepts
tags:
  - knowledge-graph
  - architecture
  - network-operations
  - graph-design
  - multi-agent
aliases:
  - Layered Graph
sources:
  - "AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo"
summary: "A knowledge graph organization pattern where data is structured in conceptual layers matching networking domains, allowing AI agents to query only the relevant depth for their specific task rather than traversing the entire graph."
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
    type: organizes
  - target: "[[concepts/multi-agent-workflows|Multi-Agent Workflows]]"
    type: used_by
---

# Layered Graph Architecture

A **layered graph architecture** is a knowledge graph organization pattern where data is structured in conceptual layers corresponding to domain-specific abstraction levels. This allows AI agents to navigate directly to the appropriate layer for their task, rather than traversing the entire graph. ^[extracted]

## Networking Domain Layers

In Cisco's network knowledge graph, the layers correspond to networking conceptual models:

1. **Raw configuration layer** — stores device configuration files at the lowest level. Used for configuration drift detection, where agents compare current configuration against desired state by going straight to this layer. ^[extracted]
2. **Data plane layer** — represents the actual data forwarding paths through the network. Used for reachability testing and traffic flow analysis. ^[extracted]
3. **Control plane layer** — represents routing protocols, adjacency relationships, and control signaling. Required alongside data plane for comprehensive reachability testing. ^[extracted]

## Design Principle

The key insight is task-directed navigation: agents understand what type of request they are executing and go directly to the layer(s) needed. For configuration drift, the agent goes straight to the raw configuration layer. For reachability testing, the agent needs both data plane and control plane layers. This avoids unnecessary graph traversal and improves query performance. ^[extracted]

## Benefits

1. **Performance** — agents query only relevant layers instead of full graph traversal
2. **Semantic clarity** — each layer maps to a well-understood networking concept
3. **Task specialization** — different agent types naturally operate at different layers
4. **Scalability** — new layers can be added without restructuring existing ones ^[inferred]

## Related

- [[concepts/network-knowledge-graph|Network Knowledge Graph]] — the graph that uses this architecture
- [[concepts/configuration-drift|Configuration Drift]] — a task that operates at the raw configuration layer
- [[concepts/multi-agent-workflows|Multi-Agent Workflows]] — agents that navigate the layers
- [[concepts/digital-twin|Digital Twin]] — the testing system built on this architecture
