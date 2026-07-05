---
title: "ServiceNow"
category: entities
tags:
  - entity
  - company
  - itsm
  - it-service-management
  - enterprise-software
aliases:
  - Service Now
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
  - target: "[[concepts/natural-language-interface|Natural Language Interface]]"
    type: implements
  - target: "[[concepts/multi-agent-workflows|Multi-Agent Workflows]]"
    type: uses
---

# ServiceNow

ServiceNow is an IT Service Management (ITSM) platform that Cisco's OutShift team integrated with their multi-agent AI system through agent-to-agent communication. In the network knowledge graph project, agents on the ServiceNow side communicate directly with agents on Cisco's side, enabling cross-system coordination for network change management. ^[extracted]

## Agent-to-Agent Communication

A key architectural feature of the Cisco system is that it is not just human operators interacting via natural language — other systems also interact. Agents running inside ServiceNow communicate with agents running on Cisco's platform, creating a multi-system agentic workflow where ITSM processes and network operations are coordinated through AI agents rather than manual handoffs. ^[extracted]

## Role in Change Management

ServiceNow serves as the ITSM system that manages change requests, approvals, and deployment workflows. The integration with Cisco's network knowledge graph allows agents to perform impact assessments and failure reasoning before changes are deployed to production, addressing the customer's core pain point of high failure rates during network change deployments. ^[extracted]

## Sources

- AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo
