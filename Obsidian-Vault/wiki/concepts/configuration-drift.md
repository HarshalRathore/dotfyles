---
title: "Configuration Drift"
category: concepts
tags:
  - configuration-drift
  - network-operations
  - validation
  - testing
  - knowledge-graph
aliases:
  - Drift Detection
sources:
  - "AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo"
summary: "The detection and comparison of deviations between a network device's actual configuration and its desired or baseline configuration, performed by AI agents querying the raw configuration layer of a network knowledge graph."
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
  - target: "[[concepts/layered-graph-architecture|Layered Graph Architecture]]"
    type: operates_at_layer
  - target: "[[concepts/network-knowledge-graph|Network Knowledge Graph]]"
    type: uses
  - target: "[[concepts/digital-twin|Digital Twin]]"
    type: tested_on
---

# Configuration Drift

**Configuration drift** is the phenomenon where a network device's actual configuration deviates from its desired or baseline configuration. In the context of AI-powered network operations, configuration drift detection is a primary use case for network knowledge graphs, where AI agents compare current device configurations against expected state by querying the raw configuration layer of the graph. ^[extracted]

## Detection Process

In Cisco's OutShift system, configuration drift detection works as follows:

1. The [[concepts/layered-graph-architecture|layered graph architecture]] stores raw configuration files at the lowest layer
2. AI agents performing drift detection navigate directly to this raw configuration layer (bypassing data plane and control plane layers)
3. Agents compare the current configuration against the desired/baseline configuration
4. Deviations are flagged for review or automated remediation ^[extracted]

## Role in Change Management

Configuration drift detection is one of the testing capabilities that the [[concepts/digital-twin|digital twin]] provides. By detecting drift before change deployments, agents can identify potential failure modes that might be caused by configuration inconsistencies across the network. This directly addresses the customer's core pain point of high failure rates during network change deployments. ^[extracted]

## Related

- [[concepts/layered-graph-architecture|Layered Graph Architecture]] — agents query the raw configuration layer for drift detection
- [[concepts/network-knowledge-graph|Network Knowledge Graph]] — stores the configuration data
- [[concepts/digital-twin|Digital Twin]] — the testing surface where drift is assessed
- [[concepts/reachability-testing|Reachability Testing]] — another testing capability of the digital twin
